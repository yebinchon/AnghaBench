
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int td_pflags; struct proc* td_proc; } ;
struct proc {int p_flag; struct vmspace* p_vmspace; } ;


 int EJUSTRETURN ;
 int KASSERT (int,char*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_HADTHREADS ;
 int SINGLE_BOUNDARY ;
 int SINGLE_EXIT ;
 int TDP_EXECVMSPC ;
 struct thread* curthread ;
 int thread_single (struct proc*,int ) ;
 int thread_single_end (struct proc*,int ) ;
 int vmspace_free (struct vmspace*) ;

void
post_execve(struct thread *td, int error, struct vmspace *oldvmspace)
{
 struct proc *p;

 KASSERT(td == curthread, ("non-current thread %p", td));
 p = td->td_proc;
 if ((p->p_flag & P_HADTHREADS) != 0) {
  PROC_LOCK(p);




  if (error == EJUSTRETURN)
   thread_single(p, SINGLE_EXIT);
  else
   thread_single_end(p, SINGLE_BOUNDARY);
  PROC_UNLOCK(p);
 }
 if ((td->td_pflags & TDP_EXECVMSPC) != 0) {
  KASSERT(p->p_vmspace != oldvmspace,
      ("oldvmspace still used"));
  vmspace_free(oldvmspace);
  td->td_pflags &= ~TDP_EXECVMSPC;
 }
}
