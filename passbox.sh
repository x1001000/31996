while(true)
do
  PASSWORD=$(whiptail --title "\"__\"" --inputbox "\nMirror mirror on the wall..." 9 32 3>&1 1>&2 2>&3)
  exitstatus=$?
  if [ $exitstatus = 0 ]; then
    if [ $PASSWORD = "31996" ]; then
      clear
      cat passbox.1.txt && sleep 2 &&
      cat passbox.2.txt && sleep 2 &&
      cat passbox.3.txt && sleep 2 &&
      cat passbox.4.txt && sleep 4 &&
      cat passbox.5.txt && sleep 4 &&
      break
    fi
    cmatrix -C red -s && sh passbox.sh
    break
  fi
done
