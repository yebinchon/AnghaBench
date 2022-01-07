
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct sigacts {int ps_flag; int ps_mtx; int ps_osigset; int ** ps_sigact; int ps_freebsd4; int ps_sigcatch; int ps_sigignore; int ps_signodefer; int ps_sigreset; int ps_sigonstack; int ps_sigintr; int ps_siginfo; int * ps_catchmask; } ;
struct sigaction {int sa_flags; int * sa_handler; int * sa_sigaction; int sa_mask; } ;
struct proc {int p_pid; struct sigacts* p_sigacts; } ;
typedef int __siginfohandler_t ;
typedef int __sighandler_t ;


 int EINVAL ;
 int KSA_FREEBSD4 ;
 int KSA_OSIGSET ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PS_CLDSIGIGN ;
 int PS_NOCLDSTOP ;
 int PS_NOCLDWAIT ;
 int SA_NOCLDSTOP ;
 int SA_NOCLDWAIT ;
 int SA_NODEFER ;
 int SA_ONSTACK ;
 int SA_RESETHAND ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 int SIGADDSET (int ,int) ;
 int SIGCHLD ;
 int SIGCONT ;
 int SIGDELSET (int ,int) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SIGKILL ;
 int SIGPROP_IGNORE ;
 int SIGSTOP ;
 int SIG_CANTMASK (int ) ;
 int * SIG_DFL ;
 int * SIG_IGN ;
 size_t _SIG_IDX (int) ;
 int _SIG_VALID (int) ;
 int memset (struct sigaction*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ sigact_flag_test (struct sigaction const*,int) ;
 int sigprop (int) ;
 int sigqueue_delete_proc (struct proc*,int) ;

int
kern_sigaction(struct thread *td, int sig, const struct sigaction *act,
    struct sigaction *oact, int flags)
{
 struct sigacts *ps;
 struct proc *p = td->td_proc;

 if (!_SIG_VALID(sig))
  return (EINVAL);
 if (act != ((void*)0) && act->sa_handler != SIG_DFL &&
     act->sa_handler != SIG_IGN && (act->sa_flags & ~(SA_ONSTACK |
     SA_RESTART | SA_RESETHAND | SA_NOCLDSTOP | SA_NODEFER |
     SA_NOCLDWAIT | SA_SIGINFO)) != 0)
  return (EINVAL);

 PROC_LOCK(p);
 ps = p->p_sigacts;
 mtx_lock(&ps->ps_mtx);
 if (oact) {
  memset(oact, 0, sizeof(*oact));
  oact->sa_mask = ps->ps_catchmask[_SIG_IDX(sig)];
  if (SIGISMEMBER(ps->ps_sigonstack, sig))
   oact->sa_flags |= SA_ONSTACK;
  if (!SIGISMEMBER(ps->ps_sigintr, sig))
   oact->sa_flags |= SA_RESTART;
  if (SIGISMEMBER(ps->ps_sigreset, sig))
   oact->sa_flags |= SA_RESETHAND;
  if (SIGISMEMBER(ps->ps_signodefer, sig))
   oact->sa_flags |= SA_NODEFER;
  if (SIGISMEMBER(ps->ps_siginfo, sig)) {
   oact->sa_flags |= SA_SIGINFO;
   oact->sa_sigaction =
       (__siginfohandler_t *)ps->ps_sigact[_SIG_IDX(sig)];
  } else
   oact->sa_handler = ps->ps_sigact[_SIG_IDX(sig)];
  if (sig == SIGCHLD && ps->ps_flag & PS_NOCLDSTOP)
   oact->sa_flags |= SA_NOCLDSTOP;
  if (sig == SIGCHLD && ps->ps_flag & PS_NOCLDWAIT)
   oact->sa_flags |= SA_NOCLDWAIT;
 }
 if (act) {
  if ((sig == SIGKILL || sig == SIGSTOP) &&
      act->sa_handler != SIG_DFL) {
   mtx_unlock(&ps->ps_mtx);
   PROC_UNLOCK(p);
   return (EINVAL);
  }





  ps->ps_catchmask[_SIG_IDX(sig)] = act->sa_mask;
  SIG_CANTMASK(ps->ps_catchmask[_SIG_IDX(sig)]);
  if (sigact_flag_test(act, SA_SIGINFO)) {
   ps->ps_sigact[_SIG_IDX(sig)] =
       (__sighandler_t *)act->sa_sigaction;
   SIGADDSET(ps->ps_siginfo, sig);
  } else {
   ps->ps_sigact[_SIG_IDX(sig)] = act->sa_handler;
   SIGDELSET(ps->ps_siginfo, sig);
  }
  if (!sigact_flag_test(act, SA_RESTART))
   SIGADDSET(ps->ps_sigintr, sig);
  else
   SIGDELSET(ps->ps_sigintr, sig);
  if (sigact_flag_test(act, SA_ONSTACK))
   SIGADDSET(ps->ps_sigonstack, sig);
  else
   SIGDELSET(ps->ps_sigonstack, sig);
  if (sigact_flag_test(act, SA_RESETHAND))
   SIGADDSET(ps->ps_sigreset, sig);
  else
   SIGDELSET(ps->ps_sigreset, sig);
  if (sigact_flag_test(act, SA_NODEFER))
   SIGADDSET(ps->ps_signodefer, sig);
  else
   SIGDELSET(ps->ps_signodefer, sig);
  if (sig == SIGCHLD) {
   if (act->sa_flags & SA_NOCLDSTOP)
    ps->ps_flag |= PS_NOCLDSTOP;
   else
    ps->ps_flag &= ~PS_NOCLDSTOP;
   if (act->sa_flags & SA_NOCLDWAIT) {






    if (p->p_pid == 1)
     ps->ps_flag &= ~PS_NOCLDWAIT;
    else
     ps->ps_flag |= PS_NOCLDWAIT;
   } else
    ps->ps_flag &= ~PS_NOCLDWAIT;
   if (ps->ps_sigact[_SIG_IDX(SIGCHLD)] == SIG_IGN)
    ps->ps_flag |= PS_CLDSIGIGN;
   else
    ps->ps_flag &= ~PS_CLDSIGIGN;
  }






  if (ps->ps_sigact[_SIG_IDX(sig)] == SIG_IGN ||
      (sigprop(sig) & SIGPROP_IGNORE &&
       ps->ps_sigact[_SIG_IDX(sig)] == SIG_DFL)) {

   sigqueue_delete_proc(p, sig);
   if (sig != SIGCONT)

    SIGADDSET(ps->ps_sigignore, sig);
   SIGDELSET(ps->ps_sigcatch, sig);
  } else {
   SIGDELSET(ps->ps_sigignore, sig);
   if (ps->ps_sigact[_SIG_IDX(sig)] == SIG_DFL)
    SIGDELSET(ps->ps_sigcatch, sig);
   else
    SIGADDSET(ps->ps_sigcatch, sig);
  }
 }
 mtx_unlock(&ps->ps_mtx);
 PROC_UNLOCK(p);
 return (0);
}
