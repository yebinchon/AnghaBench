
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_inhibitors; int td_flags; scalar_t__ td_priority; } ;
struct tdq {scalar_t__ tdq_lowpri; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TDF_INMEM ;
 int TDQ_LOCK_ASSERT (struct tdq*,int ) ;
 scalar_t__ TD_CAN_RUN (struct thread*) ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 int tdq_load_add (struct tdq*,struct thread*) ;
 int tdq_runq_add (struct tdq*,struct thread*,int) ;

void
tdq_add(struct tdq *tdq, struct thread *td, int flags)
{

 TDQ_LOCK_ASSERT(tdq, MA_OWNED);
 KASSERT((td->td_inhibitors == 0),
     ("sched_add: trying to run inhibited thread"));
 KASSERT((TD_CAN_RUN(td) || TD_IS_RUNNING(td)),
     ("sched_add: bad thread state"));
 KASSERT(td->td_flags & TDF_INMEM,
     ("sched_add: thread swapped out"));

 if (td->td_priority < tdq->tdq_lowpri)
  tdq->tdq_lowpri = td->td_priority;
 tdq_runq_add(tdq, td, flags);
 tdq_load_add(tdq, td);
}
