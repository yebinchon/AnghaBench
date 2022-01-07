
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
__attribute__((used)) static uint8_t
umct_calc_baud(uint32_t baud)
{
 switch (baud) {
  case 133:return (0x1);
 case 129:
  return (0x2);
 case 136:
  return (0x3);
 case 134:
  return (0x4);
 case 131:
  return (0x6);
 case 128:
  return (0x8);
 case 135:
  return (0x9);
 case 132:
  return (0xa);
 case 130:
  return (0xb);
 case 115200:
  return (0xc);
 case 137:
 default:
  break;
 }
 return (0x0);
}
