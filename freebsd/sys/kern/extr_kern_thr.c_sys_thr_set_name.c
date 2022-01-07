
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_name; struct proc* td_proc; } ;
struct thr_set_name_args {scalar_t__ id; int * name; } ;
struct proc {int p_pid; } ;
typedef int name ;
typedef int lwpid_t ;


 int ENAMETOOLONG ;
 int ESRCH ;
 int MAXCOMLEN ;
 int PMC_CALL_HOOK_UNLOCKED (struct thread*,int ,int *) ;
 int PMC_FN_THR_CREATE_LOG ;
 scalar_t__ PMC_PROC_IS_USING_PMCS (struct proc*) ;
 scalar_t__ PMC_SYSTEM_SAMPLING_ACTIVE () ;
 int PROC_UNLOCK (struct proc*) ;
 int copyin (int *,char*,int) ;
 int copyinstr (int *,char*,int,int *) ;
 int sched_clear_tdname (struct thread*) ;
 int strcpy (int ,char*) ;
 struct thread* tdfind (int ,int ) ;

int
sys_thr_set_name(struct thread *td, struct thr_set_name_args *uap)
{
 struct proc *p;
 char name[MAXCOMLEN + 1];
 struct thread *ttd;
 int error;

 error = 0;
 name[0] = '\0';
 if (uap->name != ((void*)0)) {
  error = copyinstr(uap->name, name, sizeof(name), ((void*)0));
  if (error == ENAMETOOLONG) {
   error = copyin(uap->name, name, sizeof(name) - 1);
   name[sizeof(name) - 1] = '\0';
  }
  if (error)
   return (error);
 }
 p = td->td_proc;
 ttd = tdfind((lwpid_t)uap->id, p->p_pid);
 if (ttd == ((void*)0))
  return (ESRCH);
 strcpy(ttd->td_name, name);







 PROC_UNLOCK(p);
 return (error);
}
