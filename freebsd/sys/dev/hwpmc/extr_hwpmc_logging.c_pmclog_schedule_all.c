
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int dummy; } ;


 int curthread ;
 int mp_ncpus ;
 int pmclog_schedule_one_cond (struct pmc_owner*) ;
 int sched_bind (int ,int) ;
 int sched_unbind (int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
pmclog_schedule_all(struct pmc_owner *po)
{



 for (int i = 0; i < mp_ncpus; i++) {
  thread_lock(curthread);
  sched_bind(curthread, i);
  thread_unlock(curthread);
  pmclog_schedule_one_cond(po);
 }
 thread_lock(curthread);
 sched_unbind(curthread);
 thread_unlock(curthread);
}
