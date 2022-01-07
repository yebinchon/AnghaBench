
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
struct nfsnode {TYPE_1__* n_fhp; } ;
struct nfsmount {struct nfsclclient* nm_clp; } ;
struct nfscllayout {int nfsly_flags; int nfsly_lock; } ;
struct nfsclclient {int nfsc_nmp; } ;
typedef int mount_t ;
struct TYPE_2__ {int nfh_len; int nfh_fh; } ;
typedef int NFSPROC_T ;


 int EPERM ;
 int NFSCLSTATEMUTEXPTR ;
 int NFSCL_DEBUG (int,char*) ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 scalar_t__ NFSHASNOLAYOUTCOMMIT (struct nfsmount*) ;
 int NFSLOCKCLSTATE () ;
 int NFSLY_WRITTEN ;
 int NFSPROCCRED (int *) ;
 int NFSUNLOCKCLSTATE () ;
 struct nfsmount* VFSTONFS (int ) ;
 struct nfsnode* VTONFS (int ) ;
 int nfscl_dolayoutcommit (int ,struct nfscllayout*,int ,int *) ;
 struct nfscllayout* nfscl_findlayout (struct nfsclclient*,int ,int ) ;
 int nfsv4_getref (int *,int *,int ,int ) ;
 int nfsv4_relref (int *) ;
 int vnode_mount (int ) ;

int
nfscl_layoutcommit(vnode_t vp, NFSPROC_T *p)
{
 struct nfsclclient *clp;
 struct nfscllayout *lyp;
 struct nfsnode *np = VTONFS(vp);
 mount_t mp;
 struct nfsmount *nmp;

 mp = vnode_mount(vp);
 nmp = VFSTONFS(mp);
 if (NFSHASNOLAYOUTCOMMIT(nmp))
  return (0);
 NFSLOCKCLSTATE();
 clp = nmp->nm_clp;
 if (clp == ((void*)0)) {
  NFSUNLOCKCLSTATE();
  return (EPERM);
 }
 lyp = nfscl_findlayout(clp, np->n_fhp->nfh_fh, np->n_fhp->nfh_len);
 if (lyp == ((void*)0)) {
  NFSUNLOCKCLSTATE();
  return (EPERM);
 }
 nfsv4_getref(&lyp->nfsly_lock, ((void*)0), NFSCLSTATEMUTEXPTR, mp);
 if (NFSCL_FORCEDISM(mp)) {
  NFSUNLOCKCLSTATE();
  return (EPERM);
 }
tryagain:
 if ((lyp->nfsly_flags & NFSLY_WRITTEN) != 0) {
  lyp->nfsly_flags &= ~NFSLY_WRITTEN;
  NFSUNLOCKCLSTATE();
  NFSCL_DEBUG(4, "do layoutcommit2\n");
  nfscl_dolayoutcommit(clp->nfsc_nmp, lyp, NFSPROCCRED(p), p);
  NFSLOCKCLSTATE();
  goto tryagain;
 }
 nfsv4_relref(&lyp->nfsly_lock);
 NFSUNLOCKCLSTATE();
 return (0);
}
