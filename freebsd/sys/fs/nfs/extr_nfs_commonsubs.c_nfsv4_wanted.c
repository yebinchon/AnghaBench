
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsv4lock {int nfslock_lock; } ;
typedef int caddr_t ;


 int NFSV4LOCK_WANTED ;
 int wakeup (int ) ;

__attribute__((used)) static void
nfsv4_wanted(struct nfsv4lock *lp)
{

 if (lp->nfslock_lock & NFSV4LOCK_WANTED) {
  lp->nfslock_lock &= ~NFSV4LOCK_WANTED;
  wakeup((caddr_t)&lp->nfslock_lock);
 }
}
