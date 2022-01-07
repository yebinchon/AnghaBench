
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct ppoll_args {int nfds; int fds; int * set; int * ts; } ;
typedef struct timespec sigset_t ;
typedef int set ;


 int copyin (int *,struct timespec*,int) ;
 int kern_poll (struct thread*,int ,int ,struct timespec*,struct timespec*) ;

int
sys_ppoll(struct thread *td, struct ppoll_args *uap)
{
 struct timespec ts, *tsp;
 sigset_t set, *ssp;
 int error;

 if (uap->ts != ((void*)0)) {
  error = copyin(uap->ts, &ts, sizeof(ts));
  if (error)
   return (error);
  tsp = &ts;
 } else
  tsp = ((void*)0);
 if (uap->set != ((void*)0)) {
  error = copyin(uap->set, &set, sizeof(set));
  if (error)
   return (error);
  ssp = &set;
 } else
  ssp = ((void*)0);





 return (kern_poll(td, uap->fds, uap->nfds, tsp, ssp));
}
