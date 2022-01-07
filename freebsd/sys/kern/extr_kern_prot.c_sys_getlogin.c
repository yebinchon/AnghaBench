
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_session; } ;
struct getlogin_args {int namelen; int namebuf; } ;
struct TYPE_3__ {int s_login; } ;


 int ERANGE ;
 int MAXLOGNAME ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SESS_LOCK (TYPE_1__*) ;
 int SESS_UNLOCK (TYPE_1__*) ;
 int copyout (char*,int ,size_t) ;
 int strlcpy (char*,int ,int) ;

int
sys_getlogin(struct thread *td, struct getlogin_args *uap)
{
 char login[MAXLOGNAME];
 struct proc *p = td->td_proc;
 size_t len;

 if (uap->namelen > MAXLOGNAME)
  uap->namelen = MAXLOGNAME;
 PROC_LOCK(p);
 SESS_LOCK(p->p_session);
 len = strlcpy(login, p->p_session->s_login, uap->namelen) + 1;
 SESS_UNLOCK(p->p_session);
 PROC_UNLOCK(p);
 if (len > uap->namelen)
  return (ERANGE);
 return (copyout(login, uap->namebuf, len));
}
