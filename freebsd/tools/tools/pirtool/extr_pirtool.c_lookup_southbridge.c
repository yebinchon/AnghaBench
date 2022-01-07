
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



char *
lookup_southbridge(uint32_t id)
{

 switch (id) {
 case 0x157310b9:
  return ("ALi M1573 (Hypertransport)");
 case 0x06861106:
  return ("VIA VT82C686/686A/686B (Apollo)");
 case 0x122E8086:
  return ("Intel 82371FB (Triton I/PIIX)");
 case 0x26418086:
  return ("Intel 82801FBM (ICH6M)");
 case 0x70008086:
  return ("Intel 82371SB (Natoma/Triton II/PIIX3)");
 default:
  return ("unknown chipset");
 }
}
