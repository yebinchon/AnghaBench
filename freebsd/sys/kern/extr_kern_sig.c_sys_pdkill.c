
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct pdkill_args {scalar_t__ signum; int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_PROCESS (struct proc*) ;
 int AUDIT_ARG_SIGNUM (scalar_t__) ;
 int EINVAL ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ _SIG_MAXSIG ;
 int cap_pdkill_rights ;
 int kern_psignal (struct proc*,scalar_t__) ;
 int p_cansignal (struct thread*,struct proc*,scalar_t__) ;
 int procdesc_find (struct thread*,int ,int *,struct proc**) ;

int
sys_pdkill(struct thread *td, struct pdkill_args *uap)
{
 struct proc *p;
 int error;

 AUDIT_ARG_SIGNUM(uap->signum);
 AUDIT_ARG_FD(uap->fd);
 if ((u_int)uap->signum > _SIG_MAXSIG)
  return (EINVAL);

 error = procdesc_find(td, uap->fd, &cap_pdkill_rights, &p);
 if (error)
  return (error);
 AUDIT_ARG_PROCESS(p);
 error = p_cansignal(td, p, uap->signum);
 if (error == 0 && uap->signum)
  kern_psignal(p, uap->signum);
 PROC_UNLOCK(p);
 return (error);
}
