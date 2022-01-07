
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct clock_getres_args {int * tp; int clock_id; } ;


 int copyout (struct timespec*,int *,int) ;
 int kern_clock_getres (struct thread*,int ,struct timespec*) ;

int
sys_clock_getres(struct thread *td, struct clock_getres_args *uap)
{
 struct timespec ts;
 int error;

 if (uap->tp == ((void*)0))
  return (0);

 error = kern_clock_getres(td, uap->clock_id, &ts);
 if (error == 0)
  error = copyout(&ts, uap->tp, sizeof(ts));
 return (error);
}
