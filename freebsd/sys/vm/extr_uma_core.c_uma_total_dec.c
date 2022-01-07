
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_subtract_long (int *,unsigned long) ;
 int uma_kmem_total ;

__attribute__((used)) static inline void
uma_total_dec(unsigned long size)
{

 atomic_subtract_long(&uma_kmem_total, size);
}
