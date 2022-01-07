
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct adjtime_args {int olddelta; scalar_t__ delta; } ;
typedef int olddelta ;
typedef int delta ;


 int copyin (scalar_t__,struct timeval*,int) ;
 int copyout (struct timeval*,int ,int) ;
 int kern_adjtime (struct thread*,struct timeval*,struct timeval*) ;

int
sys_adjtime(struct thread *td, struct adjtime_args *uap)
{
 struct timeval delta, olddelta, *deltap;
 int error;

 if (uap->delta) {
  error = copyin(uap->delta, &delta, sizeof(delta));
  if (error)
   return (error);
  deltap = &delta;
 } else
  deltap = ((void*)0);
 error = kern_adjtime(td, deltap, &olddelta);
 if (uap->olddelta && error == 0)
  error = copyout(&olddelta, uap->olddelta, sizeof(olddelta));
 return (error);
}
