
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {struct proc* td_proc; int td_ucred; } ;
struct proc {int p_flag; TYPE_1__* p_session; } ;
struct devfs_dirent {struct cdev_priv* de_cdp; } ;
struct TYPE_4__ {struct ucred* si_cred; } ;
struct cdev_priv {TYPE_2__ cdp_c; } ;
struct TYPE_3__ {struct cdev_priv* s_ttydp; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 int prison_check (int ,struct ucred*) ;

__attribute__((used)) static inline int
devfs_prison_check(struct devfs_dirent *de, struct thread *td)
{
 struct cdev_priv *cdp;
 struct ucred *dcr;
 struct proc *p;
 int error;

 cdp = de->de_cdp;
 if (cdp == ((void*)0))
  return (0);
 dcr = cdp->cdp_c.si_cred;
 if (dcr == ((void*)0))
  return (0);

 error = prison_check(td->td_ucred, dcr);
 if (error == 0)
  return (0);

 p = td->td_proc;
 PROC_LOCK(p);
 if (!(p->p_flag & P_CONTROLT)) {
  PROC_UNLOCK(p);
  return (error);
 }
 if (p->p_session->s_ttydp == cdp)
  error = 0;
 PROC_UNLOCK(p);
 return (error);
}
