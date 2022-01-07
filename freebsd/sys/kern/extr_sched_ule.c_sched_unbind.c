
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int ts_flags; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int TSF_BOUND ;
 struct thread* curthread ;
 int sched_unpin () ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_unbind(struct thread *td)
{
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 KASSERT(td == curthread, ("sched_unbind: can only bind curthread"));
 ts = td_get_sched(td);
 if ((ts->ts_flags & TSF_BOUND) == 0)
  return;
 ts->ts_flags &= ~TSF_BOUND;
 sched_unpin();
}
