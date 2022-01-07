
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {uintptr_t* td_retval; } ;
struct break_args {scalar_t__ nsize; } ;


 int ENOSYS ;
 int kern_break (struct thread*,uintptr_t*) ;

int
sys_break(struct thread *td, struct break_args *uap)
{

 uintptr_t addr;
 int error;

 addr = (uintptr_t)uap->nsize;
 error = kern_break(td, &addr);
 if (error == 0)
  td->td_retval[0] = addr;
 return (error);



}
