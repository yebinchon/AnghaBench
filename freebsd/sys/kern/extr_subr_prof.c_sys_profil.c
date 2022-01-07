
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uprof {int pr_scale; int pr_size; int pr_base; int pr_off; } ;
struct thread {struct proc* td_proc; } ;
struct profil_args {int scale; int size; int samples; int offset; } ;
struct proc {TYPE_1__* p_stats; } ;
struct TYPE_2__ {struct uprof p_prof; } ;


 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_PROFLOCK (struct proc*) ;
 int PROC_PROFUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int startprofclock (struct proc*) ;
 int stopprofclock (struct proc*) ;

int
sys_profil(struct thread *td, struct profil_args *uap)
{
 struct uprof *upp;
 struct proc *p;

 if (uap->scale > (1 << 16))
  return (EINVAL);

 p = td->td_proc;
 if (uap->scale == 0) {
  PROC_LOCK(p);
  stopprofclock(p);
  PROC_UNLOCK(p);
  return (0);
 }
 PROC_LOCK(p);
 upp = &td->td_proc->p_stats->p_prof;
 PROC_PROFLOCK(p);
 upp->pr_off = uap->offset;
 upp->pr_scale = uap->scale;
 upp->pr_base = uap->samples;
 upp->pr_size = uap->size;
 PROC_PROFUNLOCK(p);
 startprofclock(p);
 PROC_UNLOCK(p);

 return (0);
}
