
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_priority; int td_flags; int td_sigqueue; struct proc* td_proc; } ;
struct proc {int p_sigqueue; } ;
typedef scalar_t__ sig_t ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SUNLOCK (struct proc*) ;
 scalar_t__ PUSER ;
 int SIGPROP_CONT ;
 int SIGPROP_KILL ;
 int SIGPROP_STOP ;
 scalar_t__ SIG_DFL ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;
 int TDF_SINTR ;
 int TD_IS_IDLETHREAD (struct thread*) ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_ON_SLEEPQ (struct thread*) ;
 struct thread* curthread ;
 int forward_signal (struct thread*) ;
 int kick_proc0 () ;
 int sched_prio (struct thread*,scalar_t__) ;
 int sigprop (int) ;
 int sigqueue_delete (int *,int) ;
 int sleepq_abort (struct thread*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
tdsigwakeup(struct thread *td, int sig, sig_t action, int intrval)
{
 struct proc *p = td->td_proc;
 int prop;
 int wakeup_swapper;

 wakeup_swapper = 0;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 prop = sigprop(sig);

 PROC_SLOCK(p);
 thread_lock(td);






 if (action == SIG_DFL && (prop & SIGPROP_KILL) != 0 &&
     td->td_priority > PUSER && !TD_IS_IDLETHREAD(td))
  sched_prio(td, PUSER);
 if (TD_ON_SLEEPQ(td)) {






  if ((td->td_flags & TDF_SINTR) == 0)
   goto out;





  if ((prop & SIGPROP_CONT) && action == SIG_DFL) {
   thread_unlock(td);
   PROC_SUNLOCK(p);
   sigqueue_delete(&p->p_sigqueue, sig);




   sigqueue_delete(&td->td_sigqueue, sig);
   return;
  }





  if ((prop & SIGPROP_STOP) != 0 && (td->td_flags & (TDF_SBDRY |
      TDF_SERESTART | TDF_SEINTR)) == TDF_SBDRY)
   goto out;




  if (td->td_priority > PUSER && !TD_IS_IDLETHREAD(td))
   sched_prio(td, PUSER);

  wakeup_swapper = sleepq_abort(td, intrval);
 } else {
 }
out:
 PROC_SUNLOCK(p);
 thread_unlock(td);
 if (wakeup_swapper)
  kick_proc0();
}
