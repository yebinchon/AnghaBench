
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; struct proc* td_proc; } ;
struct proc {int p_flag; } ;
struct issetugid_args {int dummy; } ;


 int P_SUGID ;

int
sys_issetugid(struct thread *td, struct issetugid_args *uap)
{
 struct proc *p = td->td_proc;
 td->td_retval[0] = (p->p_flag & P_SUGID) ? 1 : 0;
 return (0);
}
