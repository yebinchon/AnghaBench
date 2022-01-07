
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



int32_t
usb_ts_rand_noise(void)
{
 uint32_t temp;
 const uint32_t prime = 0xFFFF1D;
 static uint32_t noise_rem = 1;

 if (noise_rem & 1) {
  noise_rem += prime;
 }
 noise_rem /= 2;

 temp = noise_rem;



 temp ^= 0x800000;
 if (temp & 0x800000) {
  temp |= (-0x800000);
 }
 return temp;
}
