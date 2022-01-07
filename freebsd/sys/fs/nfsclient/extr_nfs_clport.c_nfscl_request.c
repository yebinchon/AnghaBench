
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_flag; } ;
struct nfsmount {int nm_sockreq; } ;
typedef int NFSPROC_T ;


 int ND_NFSV3 ;
 int ND_NFSV4 ;
 int NFS_PROG ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 int NFS_VER4 ;
 struct nfsmount* VFSTONFS (int ) ;
 int newnfs_request (struct nfsrv_descript*,struct nfsmount*,int *,int *,struct vnode*,int *,struct ucred*,int ,int,int *,int,int *,int *) ;

int
nfscl_request(struct nfsrv_descript *nd, struct vnode *vp, NFSPROC_T *p,
    struct ucred *cred, void *stuff)
{
 int ret, vers;
 struct nfsmount *nmp;

 nmp = VFSTONFS(vp->v_mount);
 if (nd->nd_flag & ND_NFSV4)
  vers = NFS_VER4;
 else if (nd->nd_flag & ND_NFSV3)
  vers = NFS_VER3;
 else
  vers = NFS_VER2;
 ret = newnfs_request(nd, nmp, ((void*)0), &nmp->nm_sockreq, vp, p, cred,
  NFS_PROG, vers, ((void*)0), 1, ((void*)0), ((void*)0));
 return (ret);
}
