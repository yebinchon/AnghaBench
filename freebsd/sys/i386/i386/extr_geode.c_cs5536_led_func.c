
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int outl (int,int) ;
 int rdmsr (int) ;

__attribute__((used)) static void
cs5536_led_func(void *ptr, int onoff)
{
 int bit;
 uint16_t a;

 bit = *(int *)ptr;
 if (bit < 0) {
  bit = -bit;
  onoff = !onoff;
 }

 a = rdmsr(0x5140000c);
 if (bit >= 16) {
  a += 0x80;
  bit -= 16;
 }

 if (onoff)
  outl(a, 1 << bit);
 else
  outl(a, 1 << (bit + 16));
}
