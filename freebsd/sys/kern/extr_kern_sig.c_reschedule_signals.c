
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_sigmask; } ;
struct sigacts {int ps_mtx; int ps_sigintr; int ps_sigcatch; } ;
struct proc {int p_flag; int p_siglist; struct sigacts* p_sigacts; } ;
typedef int sigset_t ;


 int EINTR ;
 int ERESTART ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_TRACED ;
 int SIGDELSET (int ,int) ;
 scalar_t__ SIGISEMPTY (int ) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SIGPROCMASK_PS_LOCKED ;
 int SIGSETAND (int ,int ) ;
 int SIG_CATCH ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sig_ffs (int *) ;
 int signotify (struct thread*) ;
 struct thread* sigtd (struct proc*,int,int ) ;
 int tdsigwakeup (struct thread*,int,int ,int ) ;

__attribute__((used)) static void
reschedule_signals(struct proc *p, sigset_t block, int flags)
{
 struct sigacts *ps;
 struct thread *td;
 int sig;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 ps = p->p_sigacts;
 mtx_assert(&ps->ps_mtx, (flags & SIGPROCMASK_PS_LOCKED) != 0 ?
     MA_OWNED : MA_NOTOWNED);
 if (SIGISEMPTY(p->p_siglist))
  return;
 SIGSETAND(block, p->p_siglist);
 while ((sig = sig_ffs(&block)) != 0) {
  SIGDELSET(block, sig);
  td = sigtd(p, sig, 0);
  signotify(td);
  if (!(flags & SIGPROCMASK_PS_LOCKED))
   mtx_lock(&ps->ps_mtx);
  if (p->p_flag & P_TRACED ||
      (SIGISMEMBER(ps->ps_sigcatch, sig) &&
      !SIGISMEMBER(td->td_sigmask, sig)))
   tdsigwakeup(td, sig, SIG_CATCH,
       (SIGISMEMBER(ps->ps_sigintr, sig) ? EINTR :
        ERESTART));
  if (!(flags & SIGPROCMASK_PS_LOCKED))
   mtx_unlock(&ps->ps_mtx);
 }
}
