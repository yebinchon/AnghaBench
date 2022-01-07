
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct vnode {int dummy; } ;
struct uio {int uio_td; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
typedef int gid_t ;
struct TYPE_2__ {int n_flag; } ;


 scalar_t__ DOINGASYNC (struct vnode*) ;
 int EIO ;
 int ND_NFSV4 ;
 int NFSCL_DEBUG (int,char*,int) ;
 scalar_t__ NFSHASPNFS (struct nfsmount*) ;
 int NFSV4OPEN_ACCESSWRITE ;
 int NFSWRITE_FILESYNC ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsmount* VFSTONFS (int ) ;
 TYPE_1__* VTONFS (struct vnode*) ;
 int nfscl_doiods (struct vnode*,struct uio*,int*,int*,int ,int ,struct ucred*,int ) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_write (struct vnode*,struct uio*,int*,int*,struct ucred*,int ,struct nfsvattr*,int*,int *,int) ;
 int vnode_mount (struct vnode*) ;

int
ncl_writerpc(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    int *iomode, int *must_commit, int called_from_strategy)
{
 struct nfsvattr nfsva;
 int error, attrflag, ret;
 struct nfsmount *nmp;

 nmp = VFSTONFS(vnode_mount(vp));
 error = EIO;
 attrflag = 0;
 if (NFSHASPNFS(nmp))
  error = nfscl_doiods(vp, uiop, iomode, must_commit,
      NFSV4OPEN_ACCESSWRITE, 0, cred, uiop->uio_td);
 NFSCL_DEBUG(4, "writerpc: aft doiods=%d\n", error);
 if (error != 0)
  error = nfsrpc_write(vp, uiop, iomode, must_commit, cred,
      uiop->uio_td, &nfsva, &attrflag, ((void*)0),
      called_from_strategy);
 if (attrflag) {
  if (VTONFS(vp)->n_flag & ND_NFSV4)
   ret = nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 1,
       1);
  else
   ret = nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0,
       1);
  if (ret && !error)
   error = ret;
 }
 if (DOINGASYNC(vp))
  *iomode = NFSWRITE_FILESYNC;
 if (error && NFS_ISV4(vp))
  error = nfscl_maperr(uiop->uio_td, error, (uid_t)0, (gid_t)0);
 return (error);
}
