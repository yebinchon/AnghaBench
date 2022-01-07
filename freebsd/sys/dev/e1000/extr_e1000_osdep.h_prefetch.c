
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline
void prefetch(void *x)
{
 __asm volatile("prefetcht0 %0" :: "m" (*(unsigned long *)x));
}
