
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ss_sp; scalar_t__ ss_size; int ss_flags; } ;
struct thread {int td_pflags; TYPE_1__ td_sigstk; struct proc* td_proc; } ;
struct sigacts {int ps_flag; scalar_t__* ps_sigact; int ps_mtx; int ps_sigignore; } ;
struct proc {struct sigacts* p_sigacts; } ;
typedef int sigset_t ;


 int MA_OWNED ;
 int MPASS (int) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PS_CLDSIGIGN ;
 int PS_NOCLDWAIT ;
 int SIGADDSET (int ,int) ;
 int SIGCHLD ;
 int SIGDELSET (int ,int) ;
 scalar_t__ SIGNOTEMPTY (int ) ;
 int SIGPIPE ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int SS_DISABLE ;
 scalar_t__ SV_ABI_CLOUDABI ;
 scalar_t__ SV_PROC_ABI (struct proc*) ;
 int TDP_ALTSTACK ;
 size_t _SIG_IDX (int ) ;
 struct thread* curthread ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sig_drop_caught (struct proc*) ;
 int sig_ffs (int *) ;
 int sigdflt (struct sigacts*,int) ;

void
execsigs(struct proc *p)
{
 sigset_t osigignore;
 struct sigacts *ps;
 int sig;
 struct thread *td;






 PROC_LOCK_ASSERT(p, MA_OWNED);
 ps = p->p_sigacts;
 mtx_lock(&ps->ps_mtx);
 sig_drop_caught(p);







 if (SV_PROC_ABI(p) == SV_ABI_CLOUDABI) {
  osigignore = ps->ps_sigignore;
  while (SIGNOTEMPTY(osigignore)) {
   sig = sig_ffs(&osigignore);
   SIGDELSET(osigignore, sig);
   if (sig != SIGPIPE)
    sigdflt(ps, sig);
  }
  SIGADDSET(ps->ps_sigignore, SIGPIPE);
 }





 td = curthread;
 MPASS(td->td_proc == p);
 td->td_sigstk.ss_flags = SS_DISABLE;
 td->td_sigstk.ss_size = 0;
 td->td_sigstk.ss_sp = 0;
 td->td_pflags &= ~TDP_ALTSTACK;



 ps->ps_flag &= ~(PS_NOCLDWAIT | PS_CLDSIGIGN);
 if (ps->ps_sigact[_SIG_IDX(SIGCHLD)] == SIG_IGN)
  ps->ps_sigact[_SIG_IDX(SIGCHLD)] = SIG_DFL;
 mtx_unlock(&ps->ps_mtx);
}
