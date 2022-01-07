
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_clear_long (unsigned long*,unsigned long) ;

__attribute__((used)) static inline void
clear_bit(int pos, unsigned long *p)
{

 atomic_clear_long(p, 1ul << pos);
}
