
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
platform_reset(void)
{


 __asm__ __volatile__(
  "mfc0 $k0, $12\n\t"
  "li $k1, 0x00100000\n\t"
  "or $k0, $k0, $k1\n\t"
  "mtc0 $k0, $12\n");
 for( ; ; )
  __asm__ __volatile("wait");
}
