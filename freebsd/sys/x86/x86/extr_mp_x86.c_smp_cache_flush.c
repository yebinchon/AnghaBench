
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_INVLCACHE ;
 int all_cpus ;
 scalar_t__ smp_started ;
 int smp_targeted_tlb_shootdown (int ,int ,int *,int ,int ) ;

void
smp_cache_flush(void)
{

 if (smp_started) {
  smp_targeted_tlb_shootdown(all_cpus, IPI_INVLCACHE, ((void*)0),
      0, 0);
 }
}
