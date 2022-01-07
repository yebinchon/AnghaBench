
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static __inline uint8_t
plcp2rate(const uint8_t plcp)
{
 switch (plcp) {
 case 0xd: return 12;
 case 0xf: return 18;
 case 0x5: return 24;
 case 0x7: return 36;
 case 0x9: return 48;
 case 0xb: return 72;
 case 0x1: return 96;
 case 0x3: return 108;
 case 10: return 2;
 case 20: return 4;
 case 55: return 11;
 case 110: return 22;
 default: return 0;
 }
}
