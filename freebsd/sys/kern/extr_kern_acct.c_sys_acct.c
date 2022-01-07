
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct nameidata {TYPE_2__* ni_vp; } ;
struct acct_args {int * path; } ;
struct TYPE_10__ {TYPE_1__* pl_rlimit; } ;
struct TYPE_9__ {scalar_t__ v_type; } ;
struct TYPE_8__ {int rlim_max; int rlim_cur; } ;


 int ACCT_EXITREQ ;
 int ACCT_RUNNING ;
 int AUDITVNODE1 ;
 int EACCES ;
 int FWRITE ;
 int LOG_NOTICE ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int *,struct thread*) ;
 int NOFOLLOW ;
 int O_APPEND ;
 int PRIV_ACCT ;
 int RLIM_INFINITY ;
 int RLIM_NLIMITS ;
 int UIO_USERSPACE ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 scalar_t__ VREG ;
 int acct_configured ;
 int acct_cred ;
 int acct_disable (struct thread*,int) ;
 int acct_flags ;
 TYPE_4__* acct_limit ;
 int acct_state ;
 scalar_t__ acct_suspended ;
 int acct_sx ;
 int acct_thread ;
 TYPE_2__* acct_vp ;
 int crhold (int ) ;
 int kproc_create (int ,int *,int *,int ,int ,char*) ;
 TYPE_4__* lim_alloc () ;
 int log (int ,char*) ;
 int mac_system_check_acct (int ,TYPE_2__*) ;
 int priv_check (struct thread*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_close (TYPE_2__*,int,int ,struct thread*) ;
 int vn_open (struct nameidata*,int*,int ,int *) ;
 int wakeup (int*) ;

int
sys_acct(struct thread *td, struct acct_args *uap)
{
 struct nameidata nd;
 int error, flags, i, replacing;

 error = priv_check(td, PRIV_ACCT);
 if (error)
  return (error);





 if (uap->path != ((void*)0)) {
  NDINIT(&nd, LOOKUP, NOFOLLOW | AUDITVNODE1,
      UIO_USERSPACE, uap->path, td);
  flags = FWRITE | O_APPEND;
  error = vn_open(&nd, &flags, 0, ((void*)0));
  if (error)
   return (error);
  NDFREE(&nd, NDF_ONLY_PNBUF);
  VOP_UNLOCK(nd.ni_vp, 0);
  if (nd.ni_vp->v_type != VREG) {
   vn_close(nd.ni_vp, flags, td->td_ucred, td);
   return (EACCES);
  }






 }





 sx_xlock(&acct_sx);






 replacing = (acct_vp != ((void*)0) && uap->path != ((void*)0));







 acct_suspended = 0;
 if (acct_vp != ((void*)0))
  error = acct_disable(td, !replacing);
 if (uap->path == ((void*)0)) {
  if (acct_state & ACCT_RUNNING) {
   acct_state |= ACCT_EXITREQ;
   wakeup(&acct_state);
  }
  sx_xunlock(&acct_sx);
  return (error);
 }





 acct_limit = lim_alloc();
 for (i = 0; i < RLIM_NLIMITS; i++)
  acct_limit->pl_rlimit[i].rlim_cur =
      acct_limit->pl_rlimit[i].rlim_max = RLIM_INFINITY;





 acct_vp = nd.ni_vp;
 acct_cred = crhold(td->td_ucred);
 acct_flags = flags;
 if (acct_state & ACCT_RUNNING)
  acct_state &= ~ACCT_EXITREQ;
 else {





  error = kproc_create(acct_thread, ((void*)0), ((void*)0), 0, 0,
      "accounting");
  if (error) {
   (void) acct_disable(td, 0);
   sx_xunlock(&acct_sx);
   log(LOG_NOTICE, "Unable to start accounting thread\n");
   return (error);
  }
 }
 acct_configured = 1;
 sx_xunlock(&acct_sx);
 if (!replacing)
  log(LOG_NOTICE, "Accounting enabled\n");
 return (error);
}
