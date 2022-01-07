
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct turnstile {int ts_lock; TYPE_2__* ts_lockobj; struct thread* ts_owner; } ;
struct thread {int td_priority; int td_tid; struct turnstile* td_blocked; int td_state; int td_name; TYPE_1__* td_proc; } ;
struct TYPE_4__ {int lo_name; } ;
struct TYPE_3__ {scalar_t__ p_magic; int p_pid; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPASS (int) ;
 int MTX_DUPOK ;
 scalar_t__ P_MAGIC ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SLEEPING (struct thread*) ;
 int TD_ON_LOCK (struct thread*) ;
 scalar_t__ TD_ON_RUNQ (struct thread*) ;
 int THREAD_LOCKPTR_ASSERT (struct thread*,int *) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct thread* curthread ;
 int kdb_backtrace_thread (struct thread*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*) ;
 int printf (char*,int,int) ;
 int sched_lend_prio (struct thread*,int) ;
 int thread_lock_flags (struct thread*,int ) ;
 int thread_unlock (struct thread*) ;
 int turnstile_adjust_thread (struct turnstile*,struct thread*) ;

__attribute__((used)) static void
propagate_priority(struct thread *td)
{
 struct turnstile *ts;
 int pri;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 pri = td->td_priority;
 ts = td->td_blocked;
 THREAD_LOCKPTR_ASSERT(td, &ts->ts_lock);






 mtx_lock_spin(&ts->ts_lock);
 for (;;) {
  td = ts->ts_owner;

  if (td == ((void*)0)) {




   mtx_unlock_spin(&ts->ts_lock);
   return;
  }

  thread_lock_flags(td, MTX_DUPOK);
  mtx_unlock_spin(&ts->ts_lock);
  MPASS(td->td_proc != ((void*)0));
  MPASS(td->td_proc->p_magic == P_MAGIC);







  if (TD_IS_SLEEPING(td)) {
   printf(
  "Sleeping thread (tid %d, pid %d) owns a non-sleepable lock\n",
       td->td_tid, td->td_proc->p_pid);
   kdb_backtrace_thread(td);
   panic("sleeping thread");
  }





  if (td->td_priority <= pri) {
   thread_unlock(td);
   return;
  }




  sched_lend_prio(td, pri);





  if (TD_IS_RUNNING(td) || TD_ON_RUNQ(td)) {
   MPASS(td->td_blocked == ((void*)0));
   thread_unlock(td);
   return;
  }






  KASSERT(td != curthread, ("Deadlock detected"));





  KASSERT(TD_ON_LOCK(td), (
      "thread %d(%s):%d holds %s but isn't blocked on a lock\n",
      td->td_tid, td->td_name, td->td_state,
      ts->ts_lockobj->lo_name));




  ts = td->td_blocked;
  MPASS(ts != ((void*)0));
  THREAD_LOCKPTR_ASSERT(td, &ts->ts_lock);

  if (!turnstile_adjust_thread(ts, td)) {
   mtx_unlock_spin(&ts->ts_lock);
   return;
  }

 }
}
