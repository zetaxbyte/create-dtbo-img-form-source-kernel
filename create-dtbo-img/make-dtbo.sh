#!/bin/bash

# script bash x python
# by t.me/@zetaxbyte --> you can rich me on telegram

# Color Tags

green="\033[92m"
cyan="\033[96m"
normal="\033[0m"

if ! [ -d ../../out/arch/arm64/boot/dts/qcom ] ; then
sleep 1
echo -e "\n$cyan============================"
echo -e "$cyan MAKE DTBO.IMG FROM DTB0 ..."
echo -e "$cyan============================\n"
sleep 1
python src/mkdtboimg.py create ../../out/arch/arm64/boot/dtbo.img ../../out/arch/arm64/boot//dts/qcom/*.dtbo
sleep 1
echo -e "\n$green============================"
echo -e "$green             DONE"
echo -e "$green============================\n $normal"
sleep 1
ls ../../out/arch/arm64/boot
echo
sleep 0.5
du -sh ../../out/arch/arm64/boot/dtbo.img
echo
fi
exit
