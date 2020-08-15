FROM alpine

ENV CONFIG=https://raw.githubusercontent.com/ttttt8/fei/kintohub/config

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    wget https://raw.github.com/hetrixtools/agent/master/hetrixtools_install.sh && bash hetrixtools_install.sh 7eea18a7e6f7e9fc64e33cf93215d8c6 0 0 0 0 0 0
    
CMD ./v2ray -config $CONFIG
