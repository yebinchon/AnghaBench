
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext32_t ;
struct thread {int dummy; } ;
struct freebsd32_setcontext_args {int * ucp; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int SIG_SETMASK ;
 int UC32_COPY_SIZE ;
 int copyin (int *,TYPE_1__*,int ) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_mcontext32 (struct thread*,int *) ;

int
freebsd32_setcontext(struct thread *td, struct freebsd32_setcontext_args *uap)
{
 ucontext32_t uc;
 int ret;

 if (uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  ret = copyin(uap->ucp, &uc, UC32_COPY_SIZE);
  if (ret == 0) {
   ret = set_mcontext32(td, &uc.uc_mcontext);
   if (ret == 0) {
    kern_sigprocmask(td, SIG_SETMASK,
        &uc.uc_sigmask, ((void*)0), 0);
   }
  }
 }
 return (ret == 0 ? EJUSTRETURN : ret);
}
