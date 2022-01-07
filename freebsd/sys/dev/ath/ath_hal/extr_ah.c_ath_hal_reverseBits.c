
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
ath_hal_reverseBits(uint32_t val, uint32_t n)
{
 uint32_t retval;
 int i;

 for (i = 0, retval = 0; i < n; i++) {
  retval = (retval << 1) | (val & 1);
  val >>= 1;
 }
 return retval;
}
