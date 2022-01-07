
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct thread {int dummy; } ;
struct ktimer_settime_args {int * ovalue; int flags; int timerid; int value; } ;
struct itimerspec {int dummy; } ;


 int copyin (int ,struct itimerspec*,int) ;
 int copyout (struct itimerspec*,int *,int) ;
 int kern_ktimer_settime (struct thread*,int ,int ,struct itimerspec*,struct itimerspec*) ;

int
sys_ktimer_settime(struct thread *td, struct ktimer_settime_args *uap)
{
 struct itimerspec val, oval, *ovalp;
 int error;

 error = copyin(uap->value, &val, sizeof(val));
 if (error != 0)
  return (error);
 ovalp = uap->ovalue != ((void*)0) ? &oval : ((void*)0);
 error = kern_ktimer_settime(td, uap->timerid, uap->flags, &val, ovalp);
 if (error == 0 && uap->ovalue != ((void*)0))
  error = copyout(ovalp, uap->ovalue, sizeof(*ovalp));
 return (error);
}
