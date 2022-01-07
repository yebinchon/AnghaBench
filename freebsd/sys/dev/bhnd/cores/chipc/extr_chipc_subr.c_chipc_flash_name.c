
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chipc_flash ;
const char *
chipc_flash_name(chipc_flash type)
{
 switch (type) {
 case 132:
  return ("CFI Flash");

 case 128:
 case 129:
  return ("SPI Flash");

 case 130:
 case 131:
  return ("QSPI Flash");

 case 134:
 case 133:
  return ("NAND");

 case 135:
 default:
  return ("unknown");
 }
}
