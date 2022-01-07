
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {int p_pid; } ;
struct getpid_args {int dummy; } ;


 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (struct proc*,int ) ;
 int kern_getppid (struct thread*) ;

int
sys_getpid(struct thread *td, struct getpid_args *uap)
{
 struct proc *p = td->td_proc;

 td->td_retval[0] = p->p_pid;




 return (0);
}
