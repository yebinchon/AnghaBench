
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct thr_suspend_args {int * timeout; } ;


 int kern_thr_suspend (struct thread*,struct timespec*) ;
 int umtx_copyin_timeout (int *,struct timespec*) ;

int
sys_thr_suspend(struct thread *td, struct thr_suspend_args *uap)

{
 struct timespec ts, *tsp;
 int error;

 tsp = ((void*)0);
 if (uap->timeout != ((void*)0)) {
  error = umtx_copyin_timeout(uap->timeout, &ts);
  if (error != 0)
   return (error);
  tsp = &ts;
 }

 return (kern_thr_suspend(td, tsp));
}
