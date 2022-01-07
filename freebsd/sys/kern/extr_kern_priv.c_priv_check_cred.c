
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_uid; int cr_ruid; } ;


 int EPERM ;
 int KASSERT (int ,char*) ;
 int PRIV_DEBUG_UNPRIV ;
 int PRIV_KMEM_READ ;


 int PRIV_MSGBUF ;

 int PRIV_VALID (int) ;


 int PR_ALLOW_UNPRIV_DEBUG ;
 int SDT_PROBE1 (int,int ,int ,int ,int) ;
 scalar_t__ SDT_PROBES_ENABLED () ;
 int kernel ;
 int mac_priv_check (struct ucred*,int) ;
 scalar_t__ mac_priv_grant (struct ucred*,int) ;
 scalar_t__ prison_allow (struct ucred*,int ) ;
 int prison_priv_check (struct ucred*,int) ;
 int priv__err ;
 int priv__ok ;
 int priv_check ;
 scalar_t__ suser_enabled ;
 scalar_t__ unprivileged_mlock ;
 scalar_t__ unprivileged_read_msgbuf ;

int
priv_check_cred(struct ucred *cred, int priv)
{
 int error;

 KASSERT(PRIV_VALID(priv), ("priv_check_cred: invalid privilege %d",
     priv));
 error = prison_priv_check(cred, priv);
 if (error)
  goto out;

 if (unprivileged_mlock) {




  switch (priv) {
  case 129:
  case 128:
   error = 0;
   goto out;
  }
 }

 if (unprivileged_read_msgbuf) {




  if (priv == PRIV_MSGBUF) {
   error = 0;
   goto out;
  }
 }
 if (suser_enabled) {
  switch (priv) {
  case 132:
  case 131:
  case 130:
   if (cred->cr_ruid == 0) {
    error = 0;
    goto out;
   }
   break;
  default:
   if (cred->cr_uid == 0) {
    error = 0;
    goto out;
   }
   break;
  }
 }






 if (priv == PRIV_KMEM_READ) {
  error = 0;
  goto out;
 }






 if (priv == PRIV_DEBUG_UNPRIV) {
  if (prison_allow(cred, PR_ALLOW_UNPRIV_DEBUG)) {
   error = 0;
   goto out;
  }
 }
 error = EPERM;
out:
 if (SDT_PROBES_ENABLED()) {
  if (error)
   SDT_PROBE1(priv, kernel, priv_check, priv__err, priv);
  else
   SDT_PROBE1(priv, kernel, priv_check, priv__ok, priv);
 }
 return (error);
}
