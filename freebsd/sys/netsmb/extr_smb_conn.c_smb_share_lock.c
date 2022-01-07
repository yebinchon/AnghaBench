
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int dummy; } ;
struct smb_connobj {int co_interlock; } ;


 struct smb_connobj* SSTOCP (struct smb_share*) ;
 int smb_co_lock (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

int
smb_share_lock(struct smb_share *ssp)
{
 struct smb_connobj *cp;
 int error;

 cp = SSTOCP(ssp);
 sx_xlock(&cp->co_interlock);
 error = smb_co_lock(cp);
 sx_unlock(&cp->co_interlock);
 return error;
}
