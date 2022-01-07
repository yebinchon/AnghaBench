
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct ktimer_create_args {int timerid; int clock_id; int * evp; } ;
typedef int ev ;


 int copyin (int *,struct sigevent*,int) ;
 int copyout (int*,int ,int) ;
 int kern_ktimer_create (struct thread*,int ,struct sigevent*,int*,int) ;
 int kern_ktimer_delete (struct thread*,int) ;

int
sys_ktimer_create(struct thread *td, struct ktimer_create_args *uap)
{
 struct sigevent *evp, ev;
 int id;
 int error;

 if (uap->evp == ((void*)0)) {
  evp = ((void*)0);
 } else {
  error = copyin(uap->evp, &ev, sizeof(ev));
  if (error != 0)
   return (error);
  evp = &ev;
 }
 error = kern_ktimer_create(td, uap->clock_id, evp, &id, -1);
 if (error == 0) {
  error = copyout(&id, uap->timerid, sizeof(int));
  if (error != 0)
   kern_ktimer_delete(td, id);
 }
 return (error);
}
