
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct uio {int uio_td; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
typedef int gid_t ;


 int EIO ;
 int NFSCL_DEBUG (int,char*,int) ;
 scalar_t__ NFSHASPNFS (struct nfsmount*) ;
 int NFSV4OPEN_ACCESSREAD ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsmount* VFSTONFS (int ) ;
 int nfscl_doiods (struct vnode*,struct uio*,int *,int *,int ,int ,struct ucred*,int ) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_read (struct vnode*,struct uio*,struct ucred*,int ,struct nfsvattr*,int*,int *) ;
 int vnode_mount (struct vnode*) ;

int
ncl_readrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
 int error, ret, attrflag;
 struct nfsvattr nfsva;
 struct nfsmount *nmp;

 nmp = VFSTONFS(vnode_mount(vp));
 error = EIO;
 attrflag = 0;
 if (NFSHASPNFS(nmp))
  error = nfscl_doiods(vp, uiop, ((void*)0), ((void*)0),
      NFSV4OPEN_ACCESSREAD, 0, cred, uiop->uio_td);
 NFSCL_DEBUG(4, "readrpc: aft doiods=%d\n", error);
 if (error != 0)
  error = nfsrpc_read(vp, uiop, cred, uiop->uio_td, &nfsva,
      &attrflag, ((void*)0));
 if (attrflag) {
  ret = nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0, 1);
  if (ret && !error)
   error = ret;
 }
 if (error && NFS_ISV4(vp))
  error = nfscl_maperr(uiop->uio_td, error, (uid_t)0, (gid_t)0);
 return (error);
}
