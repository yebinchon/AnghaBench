
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct thread {int dummy; } ;
struct setcontext_args {int * ucp; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int SIG_SETMASK ;
 int UC_COPY_SIZE ;
 int copyin (int *,TYPE_1__*,int ) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_mcontext (struct thread*,int *) ;

int
sys_setcontext(struct thread *td, struct setcontext_args *uap)
{
 ucontext_t uc;
 int ret;

 if (uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  ret = copyin(uap->ucp, &uc, UC_COPY_SIZE);
  if (ret == 0) {
   ret = set_mcontext(td, &uc.uc_mcontext);
   if (ret == 0) {
    kern_sigprocmask(td, SIG_SETMASK, &uc.uc_sigmask,
        ((void*)0), 0);
   }
  }
 }
 return (ret == 0 ? EJUSTRETURN : ret);
}
