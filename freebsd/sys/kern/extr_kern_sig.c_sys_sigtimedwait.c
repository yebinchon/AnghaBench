
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ts ;
struct timespec {int dummy; } ;
struct thread {int * td_retval; } ;
struct sigtimedwait_args {int info; scalar_t__ set; scalar_t__ timeout; } ;
typedef struct timespec sigset_t ;
typedef int siginfo_t ;
typedef int set ;
struct TYPE_3__ {int ksi_signo; int ksi_info; } ;
typedef TYPE_1__ ksiginfo_t ;


 int copyin (scalar_t__,struct timespec*,int) ;
 int copyout (int *,int ,int) ;
 int kern_sigtimedwait (struct thread*,struct timespec,TYPE_1__*,struct timespec*) ;

int
sys_sigtimedwait(struct thread *td, struct sigtimedwait_args *uap)
{
 struct timespec ts;
 struct timespec *timeout;
 sigset_t set;
 ksiginfo_t ksi;
 int error;

 if (uap->timeout) {
  error = copyin(uap->timeout, &ts, sizeof(ts));
  if (error)
   return (error);

  timeout = &ts;
 } else
  timeout = ((void*)0);

 error = copyin(uap->set, &set, sizeof(set));
 if (error)
  return (error);

 error = kern_sigtimedwait(td, set, &ksi, timeout);
 if (error)
  return (error);

 if (uap->info)
  error = copyout(&ksi.ksi_info, uap->info, sizeof(siginfo_t));

 if (error == 0)
  td->td_retval[0] = ksi.ksi_signo;
 return (error);
}
