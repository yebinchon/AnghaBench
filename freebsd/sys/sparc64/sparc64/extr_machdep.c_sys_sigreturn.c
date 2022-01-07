
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int _mc_tstate; int _mc_sp; int _mc_tpc; } ;
struct TYPE_5__ {int uc_sigmask; TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
typedef int uc ;
struct thread {struct proc* td_proc; } ;
struct sigreturn_args {int sigcntxp; } ;
struct proc {int dummy; } ;
typedef TYPE_2__ mcontext_t ;


 int CTR1 (int ,char*,struct thread*) ;
 int CTR2 (int ,char*,struct thread*,int ) ;
 int CTR4 (int ,char*,struct thread*,int ,int ,int ) ;
 int EFAULT ;
 int EJUSTRETURN ;
 int KTR_SIG ;
 int PROC_LOCK (struct proc*) ;
 int SIGILL ;
 int SIG_SETMASK ;
 scalar_t__ copyin (int ,TYPE_1__*,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 scalar_t__ rwindow_save (struct thread*) ;
 int set_mcontext (struct thread*,TYPE_2__*) ;
 int sigexit (struct thread*,int ) ;

int
sys_sigreturn(struct thread *td, struct sigreturn_args *uap)
{
 struct proc *p;
 mcontext_t *mc;
 ucontext_t uc;
 int error;

 p = td->td_proc;
 if (rwindow_save(td)) {
  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }

 CTR2(KTR_SIG, "sigreturn: td=%p ucp=%p", td, uap->sigcntxp);
 if (copyin(uap->sigcntxp, &uc, sizeof(uc)) != 0) {
  CTR1(KTR_SIG, "sigreturn: efault td=%p", td);
  return (EFAULT);
 }

 mc = &uc.uc_mcontext;
 error = set_mcontext(td, mc);
 if (error != 0)
  return (error);

 kern_sigprocmask(td, SIG_SETMASK, &uc.uc_sigmask, ((void*)0), 0);

 CTR4(KTR_SIG, "sigreturn: return td=%p pc=%#lx sp=%#lx tstate=%#lx",
     td, mc->_mc_tpc, mc->_mc_sp, mc->_mc_tstate);
 return (EJUSTRETURN);
}
