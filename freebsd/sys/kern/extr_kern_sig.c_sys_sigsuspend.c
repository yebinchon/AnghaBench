
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigsuspend_args {int sigmask; } ;
typedef int sigset_t ;
typedef int mask ;


 int copyin (int ,int *,int) ;
 int kern_sigsuspend (struct thread*,int ) ;

int
sys_sigsuspend(struct thread *td, struct sigsuspend_args *uap)
{
 sigset_t mask;
 int error;

 error = copyin(uap->sigmask, &mask, sizeof(mask));
 if (error)
  return (error);
 return (kern_sigsuspend(td, mask));
}
