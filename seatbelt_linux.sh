#!/bin/bash 

echo -ne "[*] Read *sh history"
cat ~/.*sh_history

echo -ne "[*] Current user info" 
whoami 
id 

echo -ne "[*] Distrubution Information\n"
lsb_release -a 

echo -ne  "\n[*] Kernel Version\n" 
uname -a 

echo -ne "\n[*] Last reboot time\n"
who -b

echo -ne "\n[*] Uptime\n"
uptime 

echo -ne "\n[*] Environment variable\n"
printenv 

echo -ne "\n[*] Installed application\n"
dpkg -l 
#rpm -qa
#pkg_info

echo -ne "\n[*] All users logon info\n"
lslogins

echo -ne "\n[*] Currently logged on users\n"
w

echo -ne "\n[*] Crontab for current user \n"
# can run on all users, but not sure if it is necessary 
cron

echo -ne "\n[*] File system disk info\n" 
df -a 

echo -ne "\n[*] Running processes\n"
ps -ef # for BSD ps ax

# Networking 

echo -ne "\n[*] ARP table\n"
arp

echo -ne "\n[*] Listening TCP ports\n" 
netstat -lt 

echo -ne "\n[*] Listening UDP ports\n"
netstat -lu 

# Sensitive Files 
echo -ne "\n[*] Checking current user's ssh information - ~/.ssh"
ls -la ~/.ssh 

echo -ne "\n[*] /etc/rc.local\n"
cat /etc/rc.local 

echo -ne "\n[*] /etc/passwd\n"
cat /etc/passwd 

echo -ne "\n[*] /etc/shadow\n" 
cat /etc/shadow 

