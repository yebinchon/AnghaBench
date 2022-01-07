
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;
struct smb_connobj {int co_interlock; } ;


 struct smb_connobj* VCTOCP (struct smb_vc*) ;
 int smb_co_unlock (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

void
smb_vc_unlock(struct smb_vc *vcp)
{

 struct smb_connobj *cp;

 cp = VCTOCP(vcp);
 sx_xlock(&cp->co_interlock);
 smb_co_unlock(cp);
 sx_unlock(&cp->co_interlock);
}
