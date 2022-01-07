
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct turnstile {int ts_lock; struct thread* ts_owner; int * ts_blocked; int ts_pending; } ;
struct thread {int dummy; } ;


 int LIST_REMOVE (struct turnstile*,int ) ;
 int MA_OWNED ;
 int MPASS (int) ;
 int TAILQ_EMPTY (int *) ;
 size_t TS_EXCLUSIVE_QUEUE ;
 size_t TS_SHARED_QUEUE ;
 struct thread* curthread ;
 int mtx_assert (int *,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sched_unlend_prio (struct thread*,int ) ;
 int td_contested_lock ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int ts_link ;
 int turnstile_calc_unlend_prio_locked (struct thread*) ;

void
turnstile_disown(struct turnstile *ts)
{
 struct thread *td;
 u_char pri;

 MPASS(ts != ((void*)0));
 mtx_assert(&ts->ts_lock, MA_OWNED);
 MPASS(ts->ts_owner == curthread);
 MPASS(TAILQ_EMPTY(&ts->ts_pending));
 MPASS(!TAILQ_EMPTY(&ts->ts_blocked[TS_EXCLUSIVE_QUEUE]) ||
     !TAILQ_EMPTY(&ts->ts_blocked[TS_SHARED_QUEUE]));







 mtx_lock_spin(&td_contested_lock);
 ts->ts_owner = ((void*)0);
 LIST_REMOVE(ts, ts_link);
 mtx_unlock_spin(&td_contested_lock);






 td = curthread;
 thread_lock(td);
 mtx_unlock_spin(&ts->ts_lock);
 mtx_lock_spin(&td_contested_lock);
 pri = turnstile_calc_unlend_prio_locked(td);
 mtx_unlock_spin(&td_contested_lock);
 sched_unlend_prio(td, pri);
 thread_unlock(td);
}
