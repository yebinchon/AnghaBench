
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t* tlb_lock; int tid_next; } ;
struct pcpu {TYPE_1__ pc_booke; } ;


 int RES_GRANULE ;
 int TID_MIN ;
 uintptr_t TLB_UNLOCKED ;
 uintptr_t* tlb0_miss_locks ;

void
cpu_pcpu_init(struct pcpu *pcpu, int cpuid, size_t sz)
{

 pcpu->pc_booke.tid_next = TID_MIN;
}
