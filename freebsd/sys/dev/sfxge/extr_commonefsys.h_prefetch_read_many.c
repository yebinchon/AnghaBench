
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline void
prefetch_read_many(void *addr)
{

 __asm__(
     "prefetcht0 (%0)"
     :
     : "r" (addr));
}
