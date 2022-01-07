
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct thread {int td_proc; int td_sigmask; } ;
struct getcontext_args {int * ucp; } ;


 int EINVAL ;
 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int UC_COPY_SIZE ;
 int bzero (TYPE_1__*,int) ;
 int copyout (TYPE_1__*,int *,int ) ;
 int get_mcontext (struct thread*,int *,int ) ;

int
sys_getcontext(struct thread *td, struct getcontext_args *uap)
{
 ucontext_t uc;
 int ret;

 if (uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  bzero(&uc, sizeof(ucontext_t));
  get_mcontext(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
  PROC_LOCK(td->td_proc);
  uc.uc_sigmask = td->td_sigmask;
  PROC_UNLOCK(td->td_proc);
  ret = copyout(&uc, uap->ucp, UC_COPY_SIZE);
 }
 return (ret);
}
