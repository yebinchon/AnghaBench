
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int * td_retval; } ;
struct sigwaitinfo_args {int info; int set; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
typedef int set ;
struct TYPE_3__ {int ksi_signo; int ksi_info; } ;
typedef TYPE_1__ ksiginfo_t ;


 int copyin (int ,int *,int) ;
 int copyout (int *,int ,int) ;
 int kern_sigtimedwait (struct thread*,int ,TYPE_1__*,int *) ;

int
sys_sigwaitinfo(struct thread *td, struct sigwaitinfo_args *uap)
{
 ksiginfo_t ksi;
 sigset_t set;
 int error;

 error = copyin(uap->set, &set, sizeof(set));
 if (error)
  return (error);

 error = kern_sigtimedwait(td, set, &ksi, ((void*)0));
 if (error)
  return (error);

 if (uap->info)
  error = copyout(&ksi.ksi_info, uap->info, sizeof(siginfo_t));

 if (error == 0)
  td->td_retval[0] = ksi.ksi_signo;
 return (error);
}
