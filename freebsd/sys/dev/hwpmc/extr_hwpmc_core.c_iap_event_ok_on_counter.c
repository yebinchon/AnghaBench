
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int
iap_event_ok_on_counter(uint8_t evsel, int ri)
{
 uint32_t mask;

 switch (evsel) {



 case 0x10:
 case 0x14:
 case 0x18:
 case 0xB3:
 case 0xC1:
 case 0xCB:
  mask = (1 << 0);
  break;




 case 0x11:
 case 0x12:
 case 0x13:
  mask = (1 << 1);
  break;

 default:
  mask = ~0;
 }

 return (mask & (1 << ri));
}
