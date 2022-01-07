
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_oppid; } ;



int
kern_getppid(struct thread *td)
{
 struct proc *p = td->td_proc;

 return (p->p_oppid);
}
