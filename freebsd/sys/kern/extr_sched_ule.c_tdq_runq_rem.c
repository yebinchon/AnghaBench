
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct tdq {int tdq_ridx; int tdq_idx; int tdq_timeshare; int tdq_transferable; } ;
struct td_sched {int ts_flags; int * ts_runq; } ;


 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int TDQ_LOCK_ASSERT (struct tdq*,int ) ;
 int TSF_XFERABLE ;
 int runq_remove (int *,struct thread*) ;
 int runq_remove_idx (int *,struct thread*,int *) ;
 struct td_sched* td_get_sched (struct thread*) ;

__attribute__((used)) static __inline void
tdq_runq_rem(struct tdq *tdq, struct thread *td)
{
 struct td_sched *ts;

 ts = td_get_sched(td);
 TDQ_LOCK_ASSERT(tdq, MA_OWNED);
 KASSERT(ts->ts_runq != ((void*)0),
     ("tdq_runq_remove: thread %p null ts_runq", td));
 if (ts->ts_flags & TSF_XFERABLE) {
  tdq->tdq_transferable--;
  ts->ts_flags &= ~TSF_XFERABLE;
 }
 if (ts->ts_runq == &tdq->tdq_timeshare) {
  if (tdq->tdq_idx != tdq->tdq_ridx)
   runq_remove_idx(ts->ts_runq, td, &tdq->tdq_ridx);
  else
   runq_remove_idx(ts->ts_runq, td, ((void*)0));
 } else
  runq_remove(ts->ts_runq, td);
}
