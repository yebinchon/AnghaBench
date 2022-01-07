
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_fetchadd_long (int *,unsigned long) ;
 scalar_t__ uma_kmem_limit ;
 int uma_kmem_total ;
 int uma_reclaim_wakeup () ;

__attribute__((used)) static inline void
uma_total_inc(unsigned long size)
{

 if (atomic_fetchadd_long(&uma_kmem_total, size) > uma_kmem_limit)
  uma_reclaim_wakeup();
}
