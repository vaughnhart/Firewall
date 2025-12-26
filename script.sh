#! /bin/zsh
sudo /bin/launchctl enable system/com.apple.auditd
sudo /bin/launchctl disable system/org.apache.httpd
sudo /bin/launchctl disable system/com.apple.nfsd
sudo bin/rm -rf /etc/exports
sudo /usr/bin/dscl . -create /Users/root UserShell /usr/bin/false
sudo /bin/launchctl disable system/com.apple.tftpd
sudo /bin/launchctl load -w /System/Library/LaunchDaemons/com.apple.timed.plist
sudo /usr/bin/security authorizationdb write system.login.screensaver "use-login-window-ui"
sudo /bin/launchctl disable system/com.apple.uucp
sudo /bin/launchctl unload -w /System/Library/LaunchDaemons/com.apple.ODSAgent.plist 
sudo /usr/sbin/sysadminctl -smbGuestAccess off
sudo /usr/sbin/cupsctl --no-share-printers
sudo /usr/bin/lpstat -p | awk '{print $2}'| /usr/bin/xargs -I{} lpadmin -p {} -o printer-is-shared=false 
sudo /usr/sbin/systemsetup -setremoteappleevents off
sudo /bin/launchctl disable system/com.apple.AEServer
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -stop
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ftp-proxy.plist 
sudo /bin/launchctl disable system/com.apple.screensharing
sudo /bin/launchctl disable system/com.apple.smbd
sudo /bin/launchctl disable system/com.openssh.sshd
sudo /bin/launchctl disable system/com.apple.netbiosd.plist
sudo /bin/launchctl enable system/com.apple.auditd
sudo /usr/bin/defaults -currentHost write com.apple.Bluetooth PrefKeyServicesEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.loginwindow EnableMCXLoginScripts -bool TRUE
sudo defaults write /var/root/Library/Preferences/com.apple.loginwindow EnableMCXLoginScripts -bool TRUE
sudo -u vaughnahart  /usr/bin/defaults -currentHost write com.apple.Bluetooth PrefKeyServicesEnabled -bool false
sudo /usr/sbin/nvram boot-args=""
sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a standbydelay 0
sudo pmset -a autopoweroff 0
sudo pmset -a womp 0
sudo pmset -a sleep 1
sudo pmset -a displaysleep 2
sudo pmset -a networkoversleep 0
sudo /usr/bin/defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd LocationServicesEnabled -bool true
sudo /usr/bin/defaults write /Library/Preferences/com.apple.locationmenu.plist ShowSystemServices -bool true
sudo /usr/bin/security authorizationdb write system.login.screensaver "authenticate-session-owner"
sudo ifconfig en0 -arp
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.netbiosd.plist
sudo /usr/sbin/systemsetup -f -setremotelogin off >/dev/null
sudo -u "$CURRENT_USER" /usr/bin/defaults delete /Users/"$CURRENT_USER"/Library/Preferences/com.apple.dock wvous-bl-corner 2>/dev/null
sudo -u "$CURRENT_USER" /usr/bin/defaults delete /Users/"$CURRENT_USER"/Library/Preferences/com.apple.dock wvous-tl-corner 2>/dev/null
sudo -u "$CURRENT_USER" /usr/bin/defaults delete /Users/"$CURRENT_USER"/Library/Preferences/com.apple.dock wvous-tr-corner 2>/dev/null
sudo -u "$CURRENT_USER" /usr/bin/defaults delete /Users/"$CURRENT_USER"/Library/Preferences/com.apple.dock wvous-br-corner 2>/dev/null
sudo launchctl config user umask 077
cd /Users
sudo chmod og-rwx *