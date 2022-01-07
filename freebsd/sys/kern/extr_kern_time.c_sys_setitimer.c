
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct setitimer_args {int * oitv; int which; int * itv; } ;
struct itimerval {int dummy; } ;
struct getitimer_args {int dummy; } ;


 int copyin (int *,struct itimerval*,int) ;
 int copyout (struct itimerval*,int *,int) ;
 int kern_setitimer (struct thread*,int ,struct itimerval*,struct itimerval*) ;
 int sys_getitimer (struct thread*,struct getitimer_args*) ;

int
sys_setitimer(struct thread *td, struct setitimer_args *uap)
{
 struct itimerval aitv, oitv;
 int error;

 if (uap->itv == ((void*)0)) {
  uap->itv = uap->oitv;
  return (sys_getitimer(td, (struct getitimer_args *)uap));
 }

 if ((error = copyin(uap->itv, &aitv, sizeof(struct itimerval))))
  return (error);
 error = kern_setitimer(td, uap->which, &aitv, &oitv);
 if (error != 0 || uap->oitv == ((void*)0))
  return (error);
 return (copyout(&oitv, uap->oitv, sizeof(struct itimerval)));
}
