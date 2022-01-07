
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; int v_vflag; } ;
struct nfsnode {int dummy; } ;
struct nfsmount {int nm_mtx; int nm_fhsize; int nm_fh; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int td_ucred; } ;


 int NFSHASGOTFSINFO (struct nfsmount*) ;
 scalar_t__ NFSHASNFSV3 (struct nfsmount*) ;
 struct vnode* NFSTOV (struct nfsnode*) ;
 scalar_t__ VDIR ;
 struct nfsmount* VFSTONFS (struct mount*) ;
 scalar_t__ VNON ;
 int VV_ROOT ;
 TYPE_1__* curthread ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ncl_fsinfo (struct nfsmount*,struct vnode*,int ,TYPE_1__*) ;
 int ncl_nget (struct mount*,int ,int ,struct nfsnode**,int) ;

__attribute__((used)) static int
nfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct vnode *vp;
 struct nfsmount *nmp;
 struct nfsnode *np;
 int error;

 nmp = VFSTONFS(mp);
 error = ncl_nget(mp, nmp->nm_fh, nmp->nm_fhsize, &np, flags);
 if (error)
  return error;
 vp = NFSTOV(np);



 mtx_lock(&nmp->nm_mtx);
 if (NFSHASNFSV3(nmp) && !NFSHASGOTFSINFO(nmp)) {
  mtx_unlock(&nmp->nm_mtx);
  ncl_fsinfo(nmp, vp, curthread->td_ucred, curthread);
 } else
  mtx_unlock(&nmp->nm_mtx);
 if (vp->v_type == VNON)
     vp->v_type = VDIR;
 vp->v_vflag |= VV_ROOT;
 *vpp = vp;
 return (0);
}
