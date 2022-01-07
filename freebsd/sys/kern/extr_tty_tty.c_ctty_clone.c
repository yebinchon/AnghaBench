
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct proc {int p_flag; TYPE_2__* p_session; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_ttyvp; } ;
struct TYPE_3__ {scalar_t__ v_type; struct cdev* v_rdev; } ;


 int P_CONTROLT ;
 scalar_t__ VBAD ;
 int clone_drain_lock ;
 struct cdev* ctty ;
 struct proc* curproc ;
 int dev_lock () ;
 int dev_refl (struct cdev*) ;
 int dev_unlock () ;
 int proctree_lock ;
 scalar_t__ strcmp (char*,char*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static void
ctty_clone(void *arg, struct ucred *cred, char *name, int namelen,
    struct cdev **dev)
{
 struct proc *p;

 if (*dev != ((void*)0))
  return;
 if (strcmp(name, "tty"))
  return;
 p = curproc;
 sx_sunlock(&clone_drain_lock);
 sx_slock(&proctree_lock);
 sx_slock(&clone_drain_lock);
 dev_lock();
 if (!(p->p_flag & P_CONTROLT))
  *dev = ctty;
 else if (p->p_session->s_ttyvp == ((void*)0))
  *dev = ctty;
 else if (p->p_session->s_ttyvp->v_type == VBAD ||
     p->p_session->s_ttyvp->v_rdev == ((void*)0)) {

  *dev = ctty;
 } else
  *dev = p->p_session->s_ttyvp->v_rdev;
 dev_refl(*dev);
 dev_unlock();
 sx_sunlock(&proctree_lock);
}
