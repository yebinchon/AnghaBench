
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct thread* curthread ;
 int exit1 (struct thread*,int,int ) ;
 int initproc ;
 int proc_reparent (struct proc*,int ,int) ;
 int proctree_lock ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int wakeup (struct proc*) ;

void
kproc_exit(int ecode)
{
 struct thread *td;
 struct proc *p;

 td = curthread;
 p = td->td_proc;





 sx_xlock(&proctree_lock);
 PROC_LOCK(p);
 proc_reparent(p, initproc, 1);
 PROC_UNLOCK(p);
 sx_xunlock(&proctree_lock);




 wakeup(p);


 exit1(td, ecode, 0);
}
