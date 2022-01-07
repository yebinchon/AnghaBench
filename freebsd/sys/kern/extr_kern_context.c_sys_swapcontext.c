
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct thread {int td_proc; int td_sigmask; } ;
struct swapcontext_args {int * ucp; int * oucp; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIG_SETMASK ;
 int UC_COPY_SIZE ;
 int bzero (TYPE_1__*,int) ;
 int copyin (int *,TYPE_1__*,int ) ;
 int copyout (TYPE_1__*,int *,int ) ;
 int get_mcontext (struct thread*,int *,int ) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_mcontext (struct thread*,int *) ;

int
sys_swapcontext(struct thread *td, struct swapcontext_args *uap)
{
 ucontext_t uc;
 int ret;

 if (uap->oucp == ((void*)0) || uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  bzero(&uc, sizeof(ucontext_t));
  get_mcontext(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
  PROC_LOCK(td->td_proc);
  uc.uc_sigmask = td->td_sigmask;
  PROC_UNLOCK(td->td_proc);
  ret = copyout(&uc, uap->oucp, UC_COPY_SIZE);
  if (ret == 0) {
   ret = copyin(uap->ucp, &uc, UC_COPY_SIZE);
   if (ret == 0) {
    ret = set_mcontext(td, &uc.uc_mcontext);
    if (ret == 0) {
     kern_sigprocmask(td, SIG_SETMASK,
         &uc.uc_sigmask, ((void*)0), 0);
    }
   }
  }
 }
 return (ret == 0 ? EJUSTRETURN : ret);
}
