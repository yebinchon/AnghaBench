
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline void
prefetch_read_once(void *addr)
{

 __asm__(
     "prefetchnta (%0)"
     :
     : "r" (addr));
}
