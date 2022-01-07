
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct kmq_notify_args {int mqd; int * sigev; } ;
typedef int ev ;


 int copyin (int *,struct sigevent*,int) ;
 int kern_kmq_notify (struct thread*,int ,struct sigevent*) ;

int
sys_kmq_notify(struct thread *td, struct kmq_notify_args *uap)
{
 struct sigevent ev, *evp;
 int error;

 if (uap->sigev == ((void*)0)) {
  evp = ((void*)0);
 } else {
  error = copyin(uap->sigev, &ev, sizeof(ev));
  if (error != 0)
   return (error);
  evp = &ev;
 }
 return (kern_kmq_notify(td, uap->mqd, evp));
}
