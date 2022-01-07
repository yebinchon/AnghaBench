
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct proc {int dummy; } ;
struct pfs_node {int pn_name; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {int p_pid; } ;


 scalar_t__ NO_PID ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct proc* pfind (scalar_t__) ;
 scalar_t__ pfs_visible_proc (struct thread*,struct pfs_node*,struct proc*) ;

__attribute__((used)) static int
pfs_visible(struct thread *td, struct pfs_node *pn, pid_t pid,
    struct proc **p)
{
 struct proc *proc;

 PFS_TRACE(("%s (pid: %d, req: %d)",
     pn->pn_name, pid, td->td_proc->p_pid));

 if (p)
  *p = ((void*)0);
 if (pid == NO_PID)
  PFS_RETURN (1);
 proc = pfind(pid);
 if (proc == ((void*)0))
  PFS_RETURN (0);
 if (pfs_visible_proc(td, pn, proc)) {
  if (p)
   *p = proc;
  else
   PROC_UNLOCK(proc);
  PFS_RETURN (1);
 }
 PROC_UNLOCK(proc);
 PFS_RETURN (0);
}
