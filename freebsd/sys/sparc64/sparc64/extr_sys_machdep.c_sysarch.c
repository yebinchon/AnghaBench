
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sysarch_args {int op; int parms; } ;


 int CAPFAIL_SYSCALL ;
 int ECAPMODE ;
 int EINVAL ;
 int Giant ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 int KTRPOINT (struct thread*,int ) ;
 int KTR_CAPFAIL ;


 int ktrcapfail (int ,int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sparc_sigtramp_install (struct thread*,int ) ;
 int sparc_utrap_install (struct thread*,int ) ;

int
sysarch(struct thread *td, struct sysarch_args *uap)
{
 int error;
 mtx_lock(&Giant);
 switch (uap->op) {
 case 129:
  error = sparc_sigtramp_install(td, uap->parms);
  break;
 case 128:
  error = sparc_utrap_install(td, uap->parms);
  break;
 default:
  error = EINVAL;
  break;
 }
 mtx_unlock(&Giant);
 return (error);
}
