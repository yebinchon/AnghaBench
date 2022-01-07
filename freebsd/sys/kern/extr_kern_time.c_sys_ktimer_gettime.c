
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct thread {int dummy; } ;
struct ktimer_gettime_args {int value; int timerid; } ;
struct itimerspec {int dummy; } ;


 int copyout (struct itimerspec*,int ,int) ;
 int kern_ktimer_gettime (struct thread*,int ,struct itimerspec*) ;

int
sys_ktimer_gettime(struct thread *td, struct ktimer_gettime_args *uap)
{
 struct itimerspec val;
 int error;

 error = kern_ktimer_gettime(td, uap->timerid, &val);
 if (error == 0)
  error = copyout(&val, uap->value, sizeof(val));
 return (error);
}
