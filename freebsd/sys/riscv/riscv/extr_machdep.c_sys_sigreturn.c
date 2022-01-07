
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int gp_sstatus; } ;
struct TYPE_8__ {TYPE_1__ mc_gpregs; } ;
struct TYPE_7__ {int uc_sigmask; TYPE_3__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int uc ;
struct thread {int dummy; } ;
struct sigreturn_args {int sigcntxp; } ;


 int EFAULT ;
 int EINVAL ;
 int EJUSTRETURN ;
 int SIG_SETMASK ;
 int SSTATUS_SPP ;
 scalar_t__ copyin (int ,TYPE_2__*,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_fpcontext (struct thread*,TYPE_3__*) ;
 int set_mcontext (struct thread*,TYPE_3__*) ;

int
sys_sigreturn(struct thread *td, struct sigreturn_args *uap)
{
 uint64_t sstatus;
 ucontext_t uc;
 int error;

 if (uap == ((void*)0))
  return (EFAULT);
 if (copyin(uap->sigcntxp, &uc, sizeof(uc)))
  return (EFAULT);






 sstatus = uc.uc_mcontext.mc_gpregs.gp_sstatus;
 if ((sstatus & SSTATUS_SPP) != 0)
  return (EINVAL);

 error = set_mcontext(td, &uc.uc_mcontext);
 if (error != 0)
  return (error);

 set_fpcontext(td, &uc.uc_mcontext);


 kern_sigprocmask(td, SIG_SETMASK, &uc.uc_sigmask, ((void*)0), 0);

 return (EJUSTRETURN);
}
