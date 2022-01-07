
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int td_sigmask; struct proc* td_proc; } ;
struct sigacts {scalar_t__* ps_sigact; int ps_mtx; int ps_sigignore; int ps_sigcatch; } ;
struct proc {int p_flag; int p_sig; TYPE_1__* p_sysent; struct sigacts* p_sigacts; } ;
struct TYPE_7__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_6__ {int (* sv_sendsig ) (scalar_t__,TYPE_2__*,int *) ;} ;


 int KASSERT (int ,char*) ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_PSIG ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_TRACED ;
 int SIGDELSET (int ,int) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 size_t _SIG_IDX (int) ;
 int _SIG_VALID (int) ;
 int curthread ;
 scalar_t__ kern_forcesigexit ;
 int ktrpsig (int,scalar_t__,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int postsig_done (int,struct thread*,struct sigacts*) ;
 int stub1 (scalar_t__,TYPE_2__*,int *) ;
 int tdsendsignal (struct proc*,struct thread*,int,TYPE_2__*) ;

void
trapsignal(struct thread *td, ksiginfo_t *ksi)
{
 struct sigacts *ps;
 struct proc *p;
 int sig;
 int code;

 p = td->td_proc;
 sig = ksi->ksi_signo;
 code = ksi->ksi_code;
 KASSERT(_SIG_VALID(sig), ("invalid signal"));

 PROC_LOCK(p);
 ps = p->p_sigacts;
 mtx_lock(&ps->ps_mtx);
 if ((p->p_flag & P_TRACED) == 0 && SIGISMEMBER(ps->ps_sigcatch, sig) &&
     !SIGISMEMBER(td->td_sigmask, sig)) {





  (*p->p_sysent->sv_sendsig)(ps->ps_sigact[_SIG_IDX(sig)],
    ksi, &td->td_sigmask);
  postsig_done(sig, td, ps);
  mtx_unlock(&ps->ps_mtx);
 } else {





  if (kern_forcesigexit &&
      (SIGISMEMBER(td->td_sigmask, sig) ||
       ps->ps_sigact[_SIG_IDX(sig)] == SIG_IGN)) {
   SIGDELSET(td->td_sigmask, sig);
   SIGDELSET(ps->ps_sigcatch, sig);
   SIGDELSET(ps->ps_sigignore, sig);
   ps->ps_sigact[_SIG_IDX(sig)] = SIG_DFL;
  }
  mtx_unlock(&ps->ps_mtx);
  p->p_sig = sig;
  tdsendsignal(p, td, sig, ksi);
 }
 PROC_UNLOCK(p);
}
