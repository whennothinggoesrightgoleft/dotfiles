# Shellskript zum updaten
# chmod +x /pfad/zu/mein_Skript - ausführbar machen
# #!/bin/bash
# #!/bin/sh
#
#
#!/bin/bash

echo clear
echo "
(1) System updaten / upgraden
(2) Standart Prg installieren Debian/Ubuntu/Mint etc"

read -p "Auswahl treffen:" varauswahl

case "$varauswahl" in
	1|eins) echo clear
	        echo "apt update als root" 
	   	sudo apt-get update
		echo "apt upgrade als root"
		sudo apt-get upgrade -y
		echo "apt dist-upgrade als root"
		sudo apt-get dist-upgrade -y
		echo "apt autoremove als root"
		sudo apt-get autoremove
		;;
	2|zwei) echo clear
	        echo "Standart Prg installieren"
		sudo apt-get install 
		;;
		echo "openssh-server htop tmux zsh git progress aircrack-ng airport-utils airgraph-ng crunch fish"
	*) echo "ZONK"
		;;
esac
#
