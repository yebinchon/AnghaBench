
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static __inline uint8_t
rate2plcp(const uint8_t rate)
{
 switch (rate) {
 case 12: return 0xd;
 case 18: return 0xf;
 case 24: return 0x5;
 case 36: return 0x7;
 case 48: return 0x9;
 case 72: return 0xb;
 case 96: return 0x1;
 case 108: return 0x3;
 case 2: return 10;
 case 4: return 20;
 case 11: return 55;
 case 22: return 110;
 default: return 0;
 }
}
