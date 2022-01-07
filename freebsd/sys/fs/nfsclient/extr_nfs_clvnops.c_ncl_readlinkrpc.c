
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct uio {int uio_td; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
typedef int gid_t ;


 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_readlink (struct vnode*,struct uio*,struct ucred*,int ,struct nfsvattr*,int*,int *) ;

int
ncl_readlinkrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
 int error, ret, attrflag;
 struct nfsvattr nfsva;

 error = nfsrpc_readlink(vp, uiop, cred, uiop->uio_td, &nfsva,
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
