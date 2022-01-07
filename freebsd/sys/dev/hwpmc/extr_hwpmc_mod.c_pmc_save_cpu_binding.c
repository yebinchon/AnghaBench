
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pmc_binding {int pb_cpu; int pb_bound; } ;
struct TYPE_5__ {int td_oncpu; } ;


 int BND ;
 int CPU ;
 int PMCDBG0 (int ,int ,int,char*) ;
 int PMCDBG1 (int ,int ,int,char*,int ) ;
 TYPE_1__* curthread ;
 int sched_is_bound (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static void
pmc_save_cpu_binding(struct pmc_binding *pb)
{
 PMCDBG0(CPU,BND,2, "save-cpu");
 thread_lock(curthread);
 pb->pb_bound = sched_is_bound(curthread);
 pb->pb_cpu = curthread->td_oncpu;
 thread_unlock(curthread);
 PMCDBG1(CPU,BND,2, "save-cpu cpu=%d", pb->pb_cpu);
}
