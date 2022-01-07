
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int v_mount; } ;
struct uio {int uio_iovcnt; int uio_offset; int uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_direofoffset; } ;
struct nfsmount {int dummy; } ;
typedef int nfsuint64 ;
typedef int gid_t ;


 int DIRBLKSIZ ;
 int KASSERT (int,char*) ;
 int NFSERR_BAD_COOKIE ;
 int NFSHASGOTFSINFO (struct nfsmount*) ;
 scalar_t__ NFSHASNFSV3 (struct nfsmount*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsmount* VFSTONFS (int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int ncl_dircookie_lock (struct nfsnode*) ;
 int ncl_dircookie_unlock (struct nfsnode*) ;
 int ncl_fsinfo (struct nfsmount*,struct vnode*,struct ucred*,struct thread*) ;
 int * ncl_getcookie (struct nfsnode*,int,int) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_readdir (struct vnode*,struct uio*,int *,struct ucred*,struct thread*,struct nfsvattr*,int*,int*,int *) ;
 int printf (char*) ;

int
ncl_readdirrpc(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    struct thread *td)
{
 struct nfsvattr nfsva;
 nfsuint64 *cookiep, cookie;
 struct nfsnode *dnp = VTONFS(vp);
 struct nfsmount *nmp = VFSTONFS(vp->v_mount);
 int error = 0, eof, attrflag;

 KASSERT(uiop->uio_iovcnt == 1 &&
     (uiop->uio_offset & (DIRBLKSIZ - 1)) == 0 &&
     (uiop->uio_resid & (DIRBLKSIZ - 1)) == 0,
     ("nfs readdirrpc bad uio"));




 ncl_dircookie_lock(dnp);
 cookiep = ncl_getcookie(dnp, uiop->uio_offset, 0);
 if (cookiep) {
  cookie = *cookiep;
  ncl_dircookie_unlock(dnp);
 } else {
  ncl_dircookie_unlock(dnp);
  return (NFSERR_BAD_COOKIE);
 }

 if (NFSHASNFSV3(nmp) && !NFSHASGOTFSINFO(nmp))
  (void)ncl_fsinfo(nmp, vp, cred, td);

 error = nfsrpc_readdir(vp, uiop, &cookie, cred, td, &nfsva,
     &attrflag, &eof, ((void*)0));
 if (attrflag)
  (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0, 1);

 if (!error) {




  if (eof)
   dnp->n_direofoffset = uiop->uio_offset;
  else {
   if (uiop->uio_resid > 0)
    printf("EEK! readdirrpc resid > 0\n");
   ncl_dircookie_lock(dnp);
   cookiep = ncl_getcookie(dnp, uiop->uio_offset, 1);
   *cookiep = cookie;
   ncl_dircookie_unlock(dnp);
  }
 } else if (NFS_ISV4(vp)) {
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 }
 return (error);
}
