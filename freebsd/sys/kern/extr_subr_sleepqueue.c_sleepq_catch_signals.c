
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; int td_flags; int td_dbgflags; int * td_lock; int td_name; } ;
struct sleepqueue_chain {int sc_lock; } ;
struct sleepqueue {int dummy; } ;
struct sigacts {int ps_mtx; int ps_sigintr; } ;
struct proc {struct sigacts* p_sigacts; scalar_t__ p_pid; } ;


 int CTR3 (int ,char*,void*,long,int ) ;
 int EINTR ;
 int ERESTART ;
 int KASSERT (int,char*) ;
 int KTR_PROC ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct sleepqueue_chain* SC_LOOKUP (void*) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int TDB_FSTP ;
 int TDF_NEEDSIGCHK ;
 int TDF_NEEDSUSPCHK ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;
 int TDP_WAKEUP ;
 scalar_t__ TD_ON_SLEEPQ (struct thread*) ;
 int TD_SBDRY_ERRNO (struct thread*) ;
 int TD_SBDRY_INTR (struct thread*) ;
 struct proc* curproc ;
 int cursig (struct thread*) ;
 struct thread* curthread ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock (int *) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*) ;
 struct sleepqueue* sleepq_lookup (void*) ;
 scalar_t__ sleepq_resume_thread (struct sleepqueue*,struct thread*,int ) ;
 int sleepq_switch (void*,int) ;
 int thread_lock (struct thread*) ;
 int thread_suspend_check (int) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
sleepq_catch_signals(void *wchan, int pri)
{
 struct sleepqueue_chain *sc;
 struct sleepqueue *sq;
 struct thread *td;
 struct proc *p;
 struct sigacts *ps;
 int sig, ret;

 ret = 0;
 td = curthread;
 p = curproc;
 sc = SC_LOOKUP(wchan);
 mtx_assert(&sc->sc_lock, MA_OWNED);
 MPASS(wchan != ((void*)0));
 if ((td->td_pflags & TDP_WAKEUP) != 0) {
  td->td_pflags &= ~TDP_WAKEUP;
  ret = EINTR;
  thread_lock(td);
  goto out;
 }





 thread_lock(td);
 if ((td->td_flags & (TDF_NEEDSIGCHK | TDF_NEEDSUSPCHK)) != 0) {
  thread_unlock(td);
  mtx_unlock_spin(&sc->sc_lock);
  CTR3(KTR_PROC, "sleepq catching signals: thread %p (pid %ld, %s)",
   (void *)td, (long)p->p_pid, td->td_name);
  PROC_LOCK(p);





  if ((td->td_flags & TDF_NEEDSUSPCHK) != 0) {
   ret = thread_suspend_check(1);
   MPASS(ret == 0 || ret == EINTR || ret == ERESTART);
   if (ret != 0) {
    PROC_UNLOCK(p);
    mtx_lock_spin(&sc->sc_lock);
    thread_lock(td);
    goto out;
   }
  }
  if ((td->td_flags & TDF_NEEDSIGCHK) != 0) {
   ps = p->p_sigacts;
   mtx_lock(&ps->ps_mtx);
   sig = cursig(td);
   if (sig == -1) {
    mtx_unlock(&ps->ps_mtx);
    KASSERT((td->td_flags & TDF_SBDRY) != 0,
        ("lost TDF_SBDRY"));
    KASSERT(TD_SBDRY_INTR(td),
        ("lost TDF_SERESTART of TDF_SEINTR"));
    KASSERT((td->td_flags &
        (TDF_SEINTR | TDF_SERESTART)) !=
        (TDF_SEINTR | TDF_SERESTART),
        ("both TDF_SEINTR and TDF_SERESTART"));
    ret = TD_SBDRY_ERRNO(td);
   } else if (sig != 0) {
    ret = SIGISMEMBER(ps->ps_sigintr, sig) ?
        EINTR : ERESTART;
    mtx_unlock(&ps->ps_mtx);
   } else {
    mtx_unlock(&ps->ps_mtx);
   }
   if ((td->td_dbgflags & TDB_FSTP) != 0) {
    if (ret == 0)
     ret = EINTR;
    td->td_dbgflags &= ~TDB_FSTP;
   }
  }





  PROC_SLOCK(p);
  mtx_lock_spin(&sc->sc_lock);
  PROC_UNLOCK(p);
  thread_lock(td);
  PROC_SUNLOCK(p);
 }
 if (ret == 0) {
  sleepq_switch(wchan, pri);
  return (0);
 }
out:




 if (TD_ON_SLEEPQ(td)) {
  sq = sleepq_lookup(wchan);
  if (sleepq_resume_thread(sq, td, 0)) {







  }
 }
 mtx_unlock_spin(&sc->sc_lock);
 MPASS(td->td_lock != &sc->sc_lock);
 return (ret);
}
