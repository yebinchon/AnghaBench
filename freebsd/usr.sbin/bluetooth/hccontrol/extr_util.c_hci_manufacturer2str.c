
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_manufacturer2str(int m)
{
 static char const * const t[] = {
             "Ericsson Technology Licensing",
             "Nokia Mobile Phones",
             "Intel Corp.",
             "IBM Corp.",
             "Toshiba Corp.",
             "3Com",
             "Microsoft",
             "Lucent",
             "Motorola",
             "Infineon Technologies AG",
             "Cambridge Silicon Radio",
             "Silicon Wave",
             "Digianswer A/S",
             "Texas Instruments Inc.",
             "Parthus Technologies Inc.",
             "Broadcom Corporation",
             "Mitel Semiconductor",
             "Widcomm, Inc.",
             "Zeevo, Inc.",
             "Atmel Corporation",
             "Mitsubishi Electric Corporation",
             "RTX Telecom A/S",
             "KC Technology Inc.",
             "Newlogic",
             "Transilica, Inc.",
             "Rohde & Schwartz GmbH & Co. KG",
             "TTPCom Limited",
             "Signia Technologies, Inc.",
             "Conexant Systems Inc.",
             "Qualcomm",
             "Inventel",
             "AVM Berlin",
             "BandSpeed, Inc.",
             "Mansella Ltd",
             "NEC Corporation",
             "WavePlus Technology Co., Ltd.",
             "Alcatel",
             "Philips Semiconductors",
             "C Technologies",
             "Open Interface",
             "R F Micro Devices",
             "Hitachi Ltd",
             "Symbol Technologies, Inc.",
             "Tenovis",
             "Macronix International Co. Ltd.",
             "GCT Semiconductor",
             "Norwood Systems",
             "MewTel Technology Inc.",
             "ST Microelectronics",
             "Synopsys",
             "Red-M (Communications) Ltd",
             "Commil Ltd",
             "Computer Access Technology Corporation (CATC)",
             "Eclipse (HQ Espana) S.L.",
             "Renesas Technology Corp.",
             "Mobilian Corporation",
             "Terax",
             "Integrated System Solution Corp.",
             "Matsushita Electric Industrial Co., Ltd.",
             "Gennum Corporation",
             "Research In Motion",
             "IPextreme, Inc.",
             "Systems and Chips, Inc",
             "Bluetooth SIG, Inc",
             "Seiko Epson Corporation"
        };

 return (m >= SIZE(t)? "?" : t[m]);
}
