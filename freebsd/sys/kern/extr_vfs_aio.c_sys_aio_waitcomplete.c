
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct aio_waitcomplete_args {int aiocbp; scalar_t__ timeout; } ;


 int aiocb_ops ;
 int copyin (scalar_t__,struct timespec*,int) ;
 int kern_aio_waitcomplete (struct thread*,int ,struct timespec*,int *) ;

int
sys_aio_waitcomplete(struct thread *td, struct aio_waitcomplete_args *uap)
{
 struct timespec ts, *tsp;
 int error;

 if (uap->timeout) {

  error = copyin(uap->timeout, &ts, sizeof(ts));
  if (error)
   return (error);
  tsp = &ts;
 } else
  tsp = ((void*)0);

 return (kern_aio_waitcomplete(td, uap->aiocbp, tsp, &aiocb_ops));
}
