
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct turnstile {int * ts_blocked; int ts_lock; } ;
struct thread {size_t td_tsqueue; scalar_t__ td_priority; struct turnstile* td_blocked; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 struct thread* TAILQ_FIRST (int *) ;
 int TD_ON_LOCK (struct thread*) ;
 int THREAD_LOCKPTR_ASSERT (struct thread*,int *) ;
 size_t TS_EXCLUSIVE_QUEUE ;
 size_t TS_SHARED_QUEUE ;
 int mtx_assert (int *,int ) ;
 int propagate_priority (struct thread*) ;
 int turnstile_adjust_thread (struct turnstile*,struct thread*) ;

void
turnstile_adjust(struct thread *td, u_char oldpri)
{
 struct turnstile *ts;

 MPASS(TD_ON_LOCK(td));




 ts = td->td_blocked;
 MPASS(ts != ((void*)0));
 THREAD_LOCKPTR_ASSERT(td, &ts->ts_lock);
 mtx_assert(&ts->ts_lock, MA_OWNED);


 if (!turnstile_adjust_thread(ts, td))
  return;






 MPASS(td->td_tsqueue == TS_EXCLUSIVE_QUEUE ||
     td->td_tsqueue == TS_SHARED_QUEUE);
 if (td == TAILQ_FIRST(&ts->ts_blocked[td->td_tsqueue]) &&
     td->td_priority < oldpri) {
  propagate_priority(td);
 }
}
