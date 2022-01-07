
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct setlogin_args {int namebuf; } ;
struct proc {TYPE_1__* p_session; } ;
typedef int logintmp ;
struct TYPE_3__ {int s_login; } ;


 int AUDIT_ARG_LOGIN (char*) ;
 int CTASSERT (int) ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int MAXLOGNAME ;
 int PRIV_PROC_SETLOGIN ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SESS_LOCK (TYPE_1__*) ;
 int SESS_UNLOCK (TYPE_1__*) ;
 int copyinstr (int ,char*,int,int *) ;
 int priv_check (struct thread*,int ) ;
 int strcpy (int ,char*) ;

int
sys_setlogin(struct thread *td, struct setlogin_args *uap)
{
 struct proc *p = td->td_proc;
 int error;
 char logintmp[MAXLOGNAME];

 CTASSERT(sizeof(p->p_session->s_login) >= sizeof(logintmp));

 error = priv_check(td, PRIV_PROC_SETLOGIN);
 if (error)
  return (error);
 error = copyinstr(uap->namebuf, logintmp, sizeof(logintmp), ((void*)0));
 if (error != 0) {
  if (error == ENAMETOOLONG)
   error = EINVAL;
  return (error);
 }
 AUDIT_ARG_LOGIN(logintmp);
 PROC_LOCK(p);
 SESS_LOCK(p->p_session);
 strcpy(p->p_session->s_login, logintmp);
 SESS_UNLOCK(p->p_session);
 PROC_UNLOCK(p);
 return (0);
}
