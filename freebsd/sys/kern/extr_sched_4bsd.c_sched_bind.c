
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;
struct td_sched {int * ts_runq; } ;


 int KASSERT (int,char*) ;
 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int PCPU_GET (int ) ;
 int SW_VOL ;
 int TDF_BOUND ;
 int THREAD_LOCK_ASSERT (struct thread*,int) ;
 int cpuid ;
 struct thread* curthread ;
 int mi_switch (int ,int *) ;
 int * runq_pcpu ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_bind(struct thread *td, int cpu)
{
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED|MA_NOTRECURSED);
 KASSERT(td == curthread, ("sched_bind: can only bind curthread"));

 ts = td_get_sched(td);

 td->td_flags |= TDF_BOUND;







}
