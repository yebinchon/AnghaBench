
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
struct TYPE_5__ {int __bits; } ;
typedef TYPE_1__ cpuset_t ;


 int CPU_CLR (int ,TYPE_1__*) ;
 int CPU_EMPTY (TYPE_1__*) ;
 int PCPU_GET (int ) ;
 TYPE_1__ all_harts ;
 int fence () ;
 int hart ;
 int sbi_remote_fence_i (int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 scalar_t__ smp_started ;

void
pmap_sync_icache(pmap_t pmap, vm_offset_t va, vm_size_t sz)
{
 cpuset_t mask;
 sched_pin();
 mask = all_harts;
 CPU_CLR(PCPU_GET(hart), &mask);
 fence();
 if (!CPU_EMPTY(&mask) && smp_started)
  sbi_remote_fence_i(mask.__bits);
 sched_unpin();
}
