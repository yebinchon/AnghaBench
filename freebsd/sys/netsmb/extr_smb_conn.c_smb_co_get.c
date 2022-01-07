
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_cred {int dummy; } ;
struct smb_connobj {int co_usecount; int co_interlock; } ;


 int MPASS (int) ;
 scalar_t__ curthread ;
 int smb_co_lock (struct smb_connobj*) ;
 scalar_t__ sx_xholder (int *) ;

int
smb_co_get(struct smb_connobj *cp, struct smb_cred *scred)
{
 int error;

 MPASS(sx_xholder(&cp->co_interlock) == curthread);
 cp->co_usecount++;
 error = smb_co_lock(cp);
 if (error)
  cp->co_usecount--;
 return error;
}
