
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int
iap_event_westmere_ok_on_counter(uint8_t evsel, int ri)
{
 uint32_t mask;

 switch (evsel) {



  case 0x60:
  case 0xB3:
  mask = 0x1;
  break;




  case 0x4C:
  case 0x4E:
  case 0x51:
  case 0x63:
  mask = 0x3;
  break;

 default:
  mask = ~0;
 }

 return (mask & (1 << ri));
}
