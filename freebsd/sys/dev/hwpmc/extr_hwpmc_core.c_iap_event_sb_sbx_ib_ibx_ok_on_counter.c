
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int
iap_event_sb_sbx_ib_ibx_ok_on_counter(uint8_t evsel, int ri)
{
 uint32_t mask;

 switch (evsel) {

    case 0xB7:
  mask = 0x1;
  break;

 case 0xC0:
  mask = 0x2;
  break;

 case 0x48:
 case 0xA2:
 case 0xA3:
  mask = 0x4;
  break;

 case 0xBB:
 case 0xCD:
  mask = 0x8;
  break;
 default:
  mask = ~0;
 }

 return (mask & (1 << ri));
}
