
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int td_pflags; struct proc* td_proc; } ;
struct proc {int p_flag; struct vmspace* p_vmspace; } ;


 int ERESTART ;
 int KASSERT (int,char*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_HADTHREADS ;
 int SINGLE_BOUNDARY ;
 int TDP_EXECVMSPC ;
 struct thread* curthread ;
 scalar_t__ thread_single (struct proc*,int ) ;

int
pre_execve(struct thread *td, struct vmspace **oldvmspace)
{
 struct proc *p;
 int error;

 KASSERT(td == curthread, ("non-current thread %p", td));
 error = 0;
 p = td->td_proc;
 if ((p->p_flag & P_HADTHREADS) != 0) {
  PROC_LOCK(p);
  if (thread_single(p, SINGLE_BOUNDARY) != 0)
   error = ERESTART;
  PROC_UNLOCK(p);
 }
 KASSERT(error != 0 || (td->td_pflags & TDP_EXECVMSPC) == 0,
     ("nested execve"));
 *oldvmspace = p->p_vmspace;
 return (error);
}
