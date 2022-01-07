
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int ts_flags; int ts_cpu; } ;


 int KASSERT (int,char*) ;
 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int PCPU_GET (int ) ;
 int SW_VOL ;
 int THREAD_CAN_MIGRATE (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int) ;
 int TSF_BOUND ;
 int cpuid ;
 struct thread* curthread ;
 int mi_switch (int ,int *) ;
 int sched_pin () ;
 int sched_unbind (struct thread*) ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_bind(struct thread *td, int cpu)
{
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED|MA_NOTRECURSED);
 KASSERT(td == curthread, ("sched_bind: can only bind curthread"));
 ts = td_get_sched(td);
 if (ts->ts_flags & TSF_BOUND)
  sched_unbind(td);
 KASSERT(THREAD_CAN_MIGRATE(td), ("%p must be migratable", td));
 ts->ts_flags |= TSF_BOUND;
 sched_pin();
 if (PCPU_GET(cpuid) == cpu)
  return;
 ts->ts_cpu = cpu;

 mi_switch(SW_VOL, ((void*)0));
}
