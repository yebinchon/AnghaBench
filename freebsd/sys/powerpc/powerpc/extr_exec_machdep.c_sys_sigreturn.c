
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * mc_gpr; int mc_srr0; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; int uc_sigmask; } ;
typedef TYPE_1__ ucontext_t ;
typedef int uc ;
struct thread {int dummy; } ;
struct sigreturn_args {int sigcntxp; } ;


 int CTR1 (int ,char*,struct thread*) ;
 int CTR2 (int ,char*,struct thread*,int ) ;
 int CTR3 (int ,char*,struct thread*,int ,int ) ;
 int EFAULT ;
 int EJUSTRETURN ;
 int KTR_SIG ;
 int SIG_SETMASK ;
 scalar_t__ copyin (int ,TYPE_1__*,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_mcontext (struct thread*,TYPE_2__*) ;

int
sys_sigreturn(struct thread *td, struct sigreturn_args *uap)
{
 ucontext_t uc;
 int error;

 CTR2(KTR_SIG, "sigreturn: td=%p ucp=%p", td, uap->sigcntxp);

 if (copyin(uap->sigcntxp, &uc, sizeof(uc)) != 0) {
  CTR1(KTR_SIG, "sigreturn: efault td=%p", td);
  return (EFAULT);
 }

 error = set_mcontext(td, &uc.uc_mcontext);
 if (error != 0)
  return (error);

 kern_sigprocmask(td, SIG_SETMASK, &uc.uc_sigmask, ((void*)0), 0);

 CTR3(KTR_SIG, "sigreturn: return td=%p pc=%#x sp=%#x",
      td, uc.uc_mcontext.mc_srr0, uc.uc_mcontext.mc_gpr[1]);

 return (EJUSTRETURN);
}
