
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; int td_cpuset; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct prison {int pr_mtx; struct cpuset* pr_cpuset; } ;
struct cpuset {int dummy; } ;
typedef int id_t ;
typedef int cpuwhich_t ;
struct TYPE_2__ {int cr_prison; } ;
 int EINVAL ;
 int ESRCH ;
 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int allprison_lock ;
 struct cpuset* cpuset_lookup (int,struct thread*) ;
 int cpuset_ref (struct cpuset*) ;
 struct cpuset* cpuset_refbase (int ) ;
 struct proc* curproc ;
 struct thread* curthread ;
 int mtx_unlock (int *) ;
 int p_cansched (struct thread*,struct proc*) ;
 struct proc* pfind (int) ;
 struct prison* prison_find_child (int ,int) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 struct thread* tdfind (int,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
cpuset_which(cpuwhich_t which, id_t id, struct proc **pp, struct thread **tdp,
    struct cpuset **setp)
{
 struct cpuset *set;
 struct thread *td;
 struct proc *p;
 int error;

 *pp = p = ((void*)0);
 *tdp = td = ((void*)0);
 *setp = set = ((void*)0);
 switch (which) {
 case 129:
  if (id == -1) {
   PROC_LOCK(curproc);
   p = curproc;
   break;
  }
  if ((p = pfind(id)) == ((void*)0))
   return (ESRCH);
  break;
 case 128:
  if (id == -1) {
   PROC_LOCK(curproc);
   p = curproc;
   td = curthread;
   break;
  }
  td = tdfind(id, -1);
  if (td == ((void*)0))
   return (ESRCH);
  p = td->td_proc;
  break;
 case 133:
  if (id == -1) {
   thread_lock(curthread);
   set = cpuset_refbase(curthread->td_cpuset);
   thread_unlock(curthread);
  } else
   set = cpuset_lookup(id, curthread);
  if (set) {
   *setp = set;
   return (0);
  }
  return (ESRCH);
 case 130:
 {

  struct prison *pr;

  sx_slock(&allprison_lock);
  pr = prison_find_child(curthread->td_ucred->cr_prison, id);
  sx_sunlock(&allprison_lock);
  if (pr == ((void*)0))
   return (ESRCH);
  cpuset_ref(pr->pr_cpuset);
  *setp = pr->pr_cpuset;
  mtx_unlock(&pr->pr_mtx);
  return (0);
 }
 case 131:
 case 132:
  return (0);
 default:
  return (EINVAL);
 }
 error = p_cansched(curthread, p);
 if (error) {
  PROC_UNLOCK(p);
  return (error);
 }
 if (td == ((void*)0))
  td = FIRST_THREAD_IN_PROC(p);
 *pp = p;
 *tdp = td;
 return (0);
}
