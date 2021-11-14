# !/bin/bash
line=`ps -ef | grep clash | wc -l`
if [ $line -ge 2 ]
then
    vivaldi-stable \
        --proxy-server="socks5://127.0.0.1:7891" --password-store=basic &> /dev/null
else
    vivaldi-stable \
        --password-store=basic &> /dev/null
fi
