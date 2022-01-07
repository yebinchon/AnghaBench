
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_cred {int dummy; } ;
struct smb_connobj {int co_usecount; int co_interlock; int co_flags; int co_level; } ;


 int SMBERROR (char*,int ) ;
 int SMBO_GONE ;
 int smb_co_gone (struct smb_connobj*,struct smb_cred*) ;
 int smb_co_unlock (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

void
smb_co_rele(struct smb_connobj *cp, struct smb_cred *scred)
{

 sx_xlock(&cp->co_interlock);
 smb_co_unlock(cp);
 if (cp->co_usecount > 1) {
  cp->co_usecount--;
  sx_unlock(&cp->co_interlock);
  return;
 }
 if (cp->co_usecount == 0) {
  SMBERROR("negative use_count for object %d", cp->co_level);
  sx_unlock(&cp->co_interlock);
  return;
 }
 cp->co_usecount--;
 cp->co_flags |= SMBO_GONE;
 sx_unlock(&cp->co_interlock);
 smb_co_gone(cp, scred);
}
