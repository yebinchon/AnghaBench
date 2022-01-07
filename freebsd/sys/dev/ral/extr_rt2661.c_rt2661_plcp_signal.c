
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
rt2661_plcp_signal(int rate)
{
 switch (rate) {

 case 12: return 0xb;
 case 18: return 0xf;
 case 24: return 0xa;
 case 36: return 0xe;
 case 48: return 0x9;
 case 72: return 0xd;
 case 96: return 0x8;
 case 108: return 0xc;


 case 2: return 0x0;
 case 4: return 0x1;
 case 11: return 0x2;
 case 22: return 0x3;
 }
 return 0xff;
}
