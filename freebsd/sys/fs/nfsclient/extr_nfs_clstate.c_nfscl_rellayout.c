
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfscllayout {int nfsly_lock; } ;


 int NFSLOCKCLSTATE () ;
 int NFSUNLOCKCLSTATE () ;
 int nfsv4_relref (int *) ;
 int nfsv4_unlock (int *,int ) ;

void
nfscl_rellayout(struct nfscllayout *lyp, int exclocked)
{

 NFSLOCKCLSTATE();
 if (exclocked != 0)
  nfsv4_unlock(&lyp->nfsly_lock, 0);
 else
  nfsv4_relref(&lyp->nfsly_lock);
 NFSUNLOCKCLSTATE();
}
