
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_add_long (unsigned long*,int) ;

__attribute__((used)) static __inline void
atomic_incr_long(unsigned long *addr)
{
 atomic_add_long(addr, 1);
}
