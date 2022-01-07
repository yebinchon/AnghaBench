
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_pgrp; } ;
struct getpgrp_args {int dummy; } ;
struct TYPE_2__ {int pg_id; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;

int
sys_getpgrp(struct thread *td, struct getpgrp_args *uap)
{
 struct proc *p = td->td_proc;

 PROC_LOCK(p);
 td->td_retval[0] = p->p_pgrp->pg_id;
 PROC_UNLOCK(p);
 return (0);
}
