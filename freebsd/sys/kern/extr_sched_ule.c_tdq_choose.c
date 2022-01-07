
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_priority; } ;
struct tdq {int tdq_idle; int tdq_ridx; int tdq_timeshare; int tdq_realtime; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ PRI_MIN_BATCH ;
 scalar_t__ PRI_MIN_IDLE ;
 int TDQ_LOCK_ASSERT (struct tdq*,int ) ;
 struct thread* runq_choose (int *) ;
 struct thread* runq_choose_from (int *,int ) ;

__attribute__((used)) static struct thread *
tdq_choose(struct tdq *tdq)
{
 struct thread *td;

 TDQ_LOCK_ASSERT(tdq, MA_OWNED);
 td = runq_choose(&tdq->tdq_realtime);
 if (td != ((void*)0))
  return (td);
 td = runq_choose_from(&tdq->tdq_timeshare, tdq->tdq_ridx);
 if (td != ((void*)0)) {
  KASSERT(td->td_priority >= PRI_MIN_BATCH,
      ("tdq_choose: Invalid priority on timeshare queue %d",
      td->td_priority));
  return (td);
 }
 td = runq_choose(&tdq->tdq_idle);
 if (td != ((void*)0)) {
  KASSERT(td->td_priority >= PRI_MIN_IDLE,
      ("tdq_choose: Invalid priority on idle queue %d",
      td->td_priority));
  return (td);
 }

 return (((void*)0));
}
