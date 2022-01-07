
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_cred {int dummy; } ;
struct smb_connobj {int co_usecount; int co_flags; int co_interlock; } ;


 int SMBERROR (char*) ;
 int SMBO_GONE ;
 int smb_co_gone (struct smb_connobj*,struct smb_cred*) ;
 int smb_co_unlock (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

void
smb_co_put(struct smb_connobj *cp, struct smb_cred *scred)
{

 sx_xlock(&cp->co_interlock);
 if (cp->co_usecount > 1) {
  cp->co_usecount--;
 } else if (cp->co_usecount == 1) {
  cp->co_usecount--;
  cp->co_flags |= SMBO_GONE;
 } else {
  SMBERROR("negative usecount");
 }
 smb_co_unlock(cp);
 sx_unlock(&cp->co_interlock);
 if ((cp->co_flags & SMBO_GONE) == 0)
  return;
 smb_co_gone(cp, scred);
}
