
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct pselect_args {int ex; int ou; int in; int nd; int * sm; int * ts; } ;
typedef struct timespec sigset_t ;
typedef int set ;


 int NFDBITS ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int copyin (int *,struct timespec*,int) ;
 int kern_pselect (struct thread*,int ,int ,int ,int ,struct timeval*,struct timespec*,int ) ;

int
sys_pselect(struct thread *td, struct pselect_args *uap)
{
 struct timespec ts;
 struct timeval tv, *tvp;
 sigset_t set, *uset;
 int error;

 if (uap->ts != ((void*)0)) {
  error = copyin(uap->ts, &ts, sizeof(ts));
  if (error != 0)
      return (error);
  TIMESPEC_TO_TIMEVAL(&tv, &ts);
  tvp = &tv;
 } else
  tvp = ((void*)0);
 if (uap->sm != ((void*)0)) {
  error = copyin(uap->sm, &set, sizeof(set));
  if (error != 0)
   return (error);
  uset = &set;
 } else
  uset = ((void*)0);
 return (kern_pselect(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
     uset, NFDBITS));
}
