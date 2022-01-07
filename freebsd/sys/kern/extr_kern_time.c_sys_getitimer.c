
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct itimerval {int dummy; } ;
struct getitimer_args {int itv; int which; } ;


 int copyout (struct itimerval*,int ,int) ;
 int kern_getitimer (struct thread*,int ,struct itimerval*) ;

int
sys_getitimer(struct thread *td, struct getitimer_args *uap)
{
 struct itimerval aitv;
 int error;

 error = kern_getitimer(td, uap->which, &aitv);
 if (error != 0)
  return (error);
 return (copyout(&aitv, uap->itv, sizeof (struct itimerval)));
}
