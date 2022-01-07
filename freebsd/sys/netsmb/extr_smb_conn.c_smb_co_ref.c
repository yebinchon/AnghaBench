
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {int co_interlock; int co_usecount; } ;


 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

void
smb_co_ref(struct smb_connobj *cp)
{

 sx_xlock(&cp->co_interlock);
 cp->co_usecount++;
 sx_unlock(&cp->co_interlock);
}
