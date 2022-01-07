
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct turnstile_chain {int tc_lock; } ;
struct turnstile {int ts_lock; int ts_lockobj; } ;
struct thread {scalar_t__ td_priority; TYPE_1__* td_proc; struct turnstile* td_turnstile; } ;
struct TYPE_2__ {scalar_t__ p_magic; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ P_MAGIC ;
 struct turnstile_chain* TC_LOOKUP (int ) ;
 int THREAD_LOCKPTR_ASSERT (struct thread*,int *) ;
 struct thread* curthread ;
 int mtx_assert (int *,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sched_lend_prio (struct thread*,scalar_t__) ;
 int td_contested_lock ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 struct thread* turnstile_first_waiter (struct turnstile*) ;
 int turnstile_setowner (struct turnstile*,struct thread*) ;

void
turnstile_claim(struct turnstile *ts)
{
 struct thread *td, *owner;
 struct turnstile_chain *tc;

 mtx_assert(&ts->ts_lock, MA_OWNED);
 MPASS(ts != curthread->td_turnstile);

 owner = curthread;
 mtx_lock_spin(&td_contested_lock);
 turnstile_setowner(ts, owner);
 mtx_unlock_spin(&td_contested_lock);

 td = turnstile_first_waiter(ts);
 MPASS(td != ((void*)0));
 MPASS(td->td_proc->p_magic == P_MAGIC);
 THREAD_LOCKPTR_ASSERT(td, &ts->ts_lock);




 thread_lock(owner);
 if (td->td_priority < owner->td_priority)
  sched_lend_prio(owner, td->td_priority);
 thread_unlock(owner);
 tc = TC_LOOKUP(ts->ts_lockobj);
 mtx_unlock_spin(&ts->ts_lock);
 mtx_unlock_spin(&tc->tc_lock);
}
