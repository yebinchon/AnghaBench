
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_session; } ;
struct getsid_args {scalar_t__ pid; } ;
struct TYPE_2__ {int s_sid; } ;


 int ESRCH ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int p_cansee (struct thread*,struct proc*) ;
 struct proc* pfind (scalar_t__) ;

int
sys_getsid(struct thread *td, struct getsid_args *uap)
{
 struct proc *p;
 int error;

 if (uap->pid == 0) {
  p = td->td_proc;
  PROC_LOCK(p);
 } else {
  p = pfind(uap->pid);
  if (p == ((void*)0))
   return (ESRCH);
  error = p_cansee(td, p);
  if (error) {
   PROC_UNLOCK(p);
   return (error);
  }
 }
 td->td_retval[0] = p->p_session->s_sid;
 PROC_UNLOCK(p);
 return (0);
}
