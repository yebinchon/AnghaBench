
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nfslock_lock; } ;
struct nfsclclient {TYPE_1__ nfsc_lock; } ;


 int NFSV4LOCK_LOCK ;
 int nfsv4_relref (TYPE_1__*) ;
 int nfsv4_unlock (TYPE_1__*,int ) ;

__attribute__((used)) static void
nfscl_clrelease(struct nfsclclient *clp)
{

 if (clp->nfsc_lock.nfslock_lock & NFSV4LOCK_LOCK)
  nfsv4_unlock(&clp->nfsc_lock, 0);
 else
  nfsv4_relref(&clp->nfsc_lock);
}
