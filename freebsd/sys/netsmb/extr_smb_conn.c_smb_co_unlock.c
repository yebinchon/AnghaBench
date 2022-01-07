
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {scalar_t__ co_locker; scalar_t__ co_lockcnt; int co_lock; int co_interlock; } ;


 int MPASS (int) ;
 scalar_t__ curthread ;
 int cv_signal (int *) ;
 scalar_t__ sx_xholder (int *) ;

void
smb_co_unlock(struct smb_connobj *cp)
{

 MPASS(sx_xholder(&cp->co_interlock) == curthread);
 MPASS(cp->co_locker == curthread);
 if (cp->co_lockcnt != 0) {
  cp->co_lockcnt--;
  return;
 }
 cp->co_locker = ((void*)0);
 cv_signal(&cp->co_lock);
}
