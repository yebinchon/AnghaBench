
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;
typedef int pid_t ;


 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int _PHOLD (struct proc*) ;
 struct proc* pfind (int ) ;

__attribute__((used)) static int
pfs_lookup_proc(pid_t pid, struct proc **p)
{
 struct proc *proc;

 proc = pfind(pid);
 if (proc == ((void*)0))
  return (0);
 if ((proc->p_flag & P_WEXIT) != 0) {
  PROC_UNLOCK(proc);
  return (0);
 }
 _PHOLD(proc);
 PROC_UNLOCK(proc);
 *p = proc;
 return (1);
}
