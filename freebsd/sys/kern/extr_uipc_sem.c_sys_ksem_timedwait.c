
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; } ;
struct thread {int dummy; } ;
struct ksem_timedwait_args {int id; int * abstime; } ;
typedef int abstime ;


 int EINVAL ;
 int copyin (int *,struct timespec*,int) ;
 int kern_sem_wait (struct thread*,int ,int ,struct timespec*) ;

int
sys_ksem_timedwait(struct thread *td, struct ksem_timedwait_args *uap)
{
 struct timespec abstime;
 struct timespec *ts;
 int error;




 if (uap->abstime == ((void*)0))
  ts = ((void*)0);
 else {
  error = copyin(uap->abstime, &abstime, sizeof(abstime));
  if (error != 0)
   return (error);
  if (abstime.tv_nsec >= 1000000000 || abstime.tv_nsec < 0)
   return (EINVAL);
  ts = &abstime;
 }
 return (kern_sem_wait(td, uap->id, 0, ts));
}
