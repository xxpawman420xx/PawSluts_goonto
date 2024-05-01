#!/bin/sh
loop () {
time1=$(shuf -i 10-120 -n 1)
sleep $time1
konsole -e nohup wine goonto-windows.exe &
PID1=$!
sleep 1
kill $PID1
time2=$(shuf -i 20-60 -n 1)
sleep $time2
PID2=goonto-windows.exe
pkill -f $PID2
}
while true
do
   loop
done
