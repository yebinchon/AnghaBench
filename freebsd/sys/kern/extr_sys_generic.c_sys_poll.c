
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct thread {int dummy; } ;
struct poll_args {int timeout; int nfds; int fds; } ;


 int EINVAL ;
 int INFTIM ;
 int kern_poll (struct thread*,int ,int ,struct timespec*,int *) ;

int
sys_poll(struct thread *td, struct poll_args *uap)
{
 struct timespec ts, *tsp;

 if (uap->timeout != INFTIM) {
  if (uap->timeout < 0)
   return (EINVAL);
  ts.tv_sec = uap->timeout / 1000;
  ts.tv_nsec = (uap->timeout % 1000) * 1000000;
  tsp = &ts;
 } else
  tsp = ((void*)0);

 return (kern_poll(td, uap->fds, uap->nfds, tsp, ((void*)0)));
}
