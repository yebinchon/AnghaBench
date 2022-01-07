
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int* td_retval; TYPE_1__* td_proc; } ;
struct sigwait_args {int sig; int set; } ;
typedef int sigset_t ;
typedef int set ;
struct TYPE_5__ {int ksi_signo; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_4__ {scalar_t__ p_osrel; } ;


 int EINTR ;
 int ERESTART ;
 scalar_t__ P_OSREL_SIGWAIT ;
 int copyin (int ,int *,int) ;
 int copyout (int *,int ,int) ;
 int kern_sigtimedwait (struct thread*,int ,TYPE_2__*,int *) ;

int
sys_sigwait(struct thread *td, struct sigwait_args *uap)
{
 ksiginfo_t ksi;
 sigset_t set;
 int error;

 error = copyin(uap->set, &set, sizeof(set));
 if (error) {
  td->td_retval[0] = error;
  return (0);
 }

 error = kern_sigtimedwait(td, set, &ksi, ((void*)0));
 if (error) {
  if (error == EINTR && td->td_proc->p_osrel < P_OSREL_SIGWAIT)
   error = ERESTART;
  if (error == ERESTART)
   return (error);
  td->td_retval[0] = error;
  return (0);
 }

 error = copyout(&ksi.ksi_signo, uap->sig, sizeof(ksi.ksi_signo));
 td->td_retval[0] = error;
 return (0);
}
