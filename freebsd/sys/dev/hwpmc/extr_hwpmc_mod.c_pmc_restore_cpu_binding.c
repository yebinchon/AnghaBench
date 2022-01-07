
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pmc_binding {int pb_cpu; scalar_t__ pb_bound; } ;
struct TYPE_6__ {int td_oncpu; } ;


 int BND ;
 int CPU ;
 int PMCDBG0 (int ,int ,int,char*) ;
 int PMCDBG2 (int ,int ,int,char*,int ,int ) ;
 TYPE_1__* curthread ;
 int sched_bind (TYPE_1__*,int ) ;
 int sched_unbind (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static void
pmc_restore_cpu_binding(struct pmc_binding *pb)
{
 PMCDBG2(CPU,BND,2, "restore-cpu curcpu=%d restore=%d",
     curthread->td_oncpu, pb->pb_cpu);
 thread_lock(curthread);
 if (pb->pb_bound)
  sched_bind(curthread, pb->pb_cpu);
 else
  sched_unbind(curthread);
 thread_unlock(curthread);
 PMCDBG0(CPU,BND,2, "restore-cpu done");
}
