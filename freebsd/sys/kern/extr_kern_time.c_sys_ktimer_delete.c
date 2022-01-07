
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ktimer_delete_args {int timerid; } ;


 int kern_ktimer_delete (struct thread*,int ) ;

int
sys_ktimer_delete(struct thread *td, struct ktimer_delete_args *uap)
{

 return (kern_ktimer_delete(td, uap->timerid));
}
