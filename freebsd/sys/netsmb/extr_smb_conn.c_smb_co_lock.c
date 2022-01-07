
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {int co_flags; int co_interlock; int co_lock; int co_lockcnt; int * co_locker; } ;


 int EINVAL ;
 int MPASS (int) ;
 int SMBO_GONE ;
 int * curthread ;
 int cv_wait (int *,int *) ;
 int * sx_xholder (int *) ;

int
smb_co_lock(struct smb_connobj *cp)
{

 MPASS(sx_xholder(&cp->co_interlock) == curthread);
 for (;;) {
  if (cp->co_flags & SMBO_GONE)
   return EINVAL;
  if (cp->co_locker == ((void*)0)) {
   cp->co_locker = curthread;
   return 0;
  }
  if (cp->co_locker == curthread) {
   cp->co_lockcnt++;
   return 0;
  }
  cv_wait(&cp->co_lock, &cp->co_interlock);
 }
}
