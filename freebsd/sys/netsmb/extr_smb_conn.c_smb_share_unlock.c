
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int dummy; } ;
struct smb_connobj {int co_interlock; } ;


 struct smb_connobj* SSTOCP (struct smb_share*) ;
 int smb_co_unlock (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

void
smb_share_unlock(struct smb_share *ssp)
{
 struct smb_connobj *cp;

 cp = SSTOCP(ssp);
 sx_xlock(&cp->co_interlock);
 smb_co_unlock(cp);
 sx_unlock(&cp->co_interlock);
}
