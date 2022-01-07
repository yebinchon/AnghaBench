
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; struct filedesc* p_fd; } ;
struct filedesc {int dummy; } ;


 int ERESTART ;
 int KASSERT (int,char*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_HADTHREADS ;
 int P_SYSTEM ;
 int RFCFDG ;
 int RFFDG ;
 int RFPROC ;
 int SINGLE_BOUNDARY ;
 int fdescfree (struct thread*) ;
 struct filedesc* fdinit (struct filedesc*,int) ;
 int fdunshare (struct thread*) ;
 scalar_t__ thread_single (struct proc*,int ) ;
 int thread_single_end (struct proc*,int ) ;
 int vm_forkproc (struct thread*,int *,int *,int *,int) ;

__attribute__((used)) static int
fork_norfproc(struct thread *td, int flags)
{
 int error;
 struct proc *p1;

 KASSERT((flags & RFPROC) == 0,
     ("fork_norfproc called with RFPROC set"));
 p1 = td->td_proc;

 if (((p1->p_flag & (P_HADTHREADS|P_SYSTEM)) == P_HADTHREADS) &&
     (flags & (RFCFDG | RFFDG))) {
  PROC_LOCK(p1);
  if (thread_single(p1, SINGLE_BOUNDARY)) {
   PROC_UNLOCK(p1);
   return (ERESTART);
  }
  PROC_UNLOCK(p1);
 }

 error = vm_forkproc(td, ((void*)0), ((void*)0), ((void*)0), flags);
 if (error)
  goto fail;




 if (flags & RFCFDG) {
  struct filedesc *fdtmp;
  fdtmp = fdinit(td->td_proc->p_fd, 0);
  fdescfree(td);
  p1->p_fd = fdtmp;
 }




 if (flags & RFFDG)
  fdunshare(td);

fail:
 if (((p1->p_flag & (P_HADTHREADS|P_SYSTEM)) == P_HADTHREADS) &&
     (flags & (RFCFDG | RFFDG))) {
  PROC_LOCK(p1);
  thread_single_end(p1, SINGLE_BOUNDARY);
  PROC_UNLOCK(p1);
 }
 return (error);
}
