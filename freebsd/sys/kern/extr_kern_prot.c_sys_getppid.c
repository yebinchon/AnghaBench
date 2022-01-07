
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct getppid_args {int dummy; } ;


 int kern_getppid (struct thread*) ;

int
sys_getppid(struct thread *td, struct getppid_args *uap)
{

 td->td_retval[0] = kern_getppid(td);
 return (0);
}
