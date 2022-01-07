
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int
ucp_event_sb_hw_ok_on_counter(uint8_t ev, int ri)
{
 uint32_t mask;

 switch (ev) {



  case 0x80:
  case 0x83:
  mask = (1 << 0);
  break;

 default:
  mask = ~0;
 }

 return (mask & (1 << ri));
}
