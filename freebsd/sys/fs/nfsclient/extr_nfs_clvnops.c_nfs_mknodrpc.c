
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct vnode {int v_mount; } ;
struct vattr {int va_rdev; int va_gid; int va_uid; int va_type; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int n_flag; } ;
struct nfsfh {int dummy; } ;
struct componentname {int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;


 int EOPNOTSUPP ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int NFSLOCKNODE (struct nfsnode*) ;
 struct vnode* NFSTOV (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 int VBLK ;
 int VCHR ;
 int VFIFO ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VSOCK ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfscl_nget (int ,struct vnode*,struct nfsfh*,struct componentname*,int ,struct nfsnode**,int *,int ) ;
 int nfsrpc_lookup (struct vnode*,int ,int ,int ,int ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int *) ;
 int nfsrpc_mknod (struct vnode*,int ,int ,struct vattr*,int,int ,int ,int ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int *) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
nfs_mknodrpc(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp,
    struct vattr *vap)
{
 struct nfsvattr nfsva, dnfsva;
 struct vnode *newvp = ((void*)0);
 struct nfsnode *np = ((void*)0), *dnp;
 struct nfsfh *nfhp;
 struct vattr vattr;
 int error = 0, attrflag, dattrflag;
 u_int32_t rdev;

 if (vap->va_type == VCHR || vap->va_type == VBLK)
  rdev = vap->va_rdev;
 else if (vap->va_type == VFIFO || vap->va_type == VSOCK)
  rdev = 0xffffffff;
 else
  return (EOPNOTSUPP);
 if ((error = VOP_GETATTR(dvp, &vattr, cnp->cn_cred)))
  return (error);
 error = nfsrpc_mknod(dvp, cnp->cn_nameptr, cnp->cn_namelen, vap,
     rdev, vap->va_type, cnp->cn_cred, cnp->cn_thread, &dnfsva,
     &nfsva, &nfhp, &attrflag, &dattrflag, ((void*)0));
 if (!error) {
  if (!nfhp)
   (void) nfsrpc_lookup(dvp, cnp->cn_nameptr,
       cnp->cn_namelen, cnp->cn_cred, cnp->cn_thread,
       &dnfsva, &nfsva, &nfhp, &attrflag, &dattrflag,
       ((void*)0));
  if (nfhp)
   error = nfscl_nget(dvp->v_mount, dvp, nfhp, cnp,
       cnp->cn_thread, &np, ((void*)0), LK_EXCLUSIVE);
 }
 if (dattrflag)
  (void) nfscl_loadattrcache(&dvp, &dnfsva, ((void*)0), ((void*)0), 0, 1);
 if (!error) {
  newvp = NFSTOV(np);
  if (attrflag != 0) {
   error = nfscl_loadattrcache(&newvp, &nfsva, ((void*)0), ((void*)0),
       0, 1);
   if (error != 0)
    vput(newvp);
  }
 }
 if (!error) {
  *vpp = newvp;
 } else if (NFS_ISV4(dvp)) {
  error = nfscl_maperr(cnp->cn_thread, error, vap->va_uid,
      vap->va_gid);
 }
 dnp = VTONFS(dvp);
 NFSLOCKNODE(dnp);
 dnp->n_flag |= NMODIFIED;
 if (!dattrflag) {
  dnp->n_attrstamp = 0;
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(dvp);
 }
 NFSUNLOCKNODE(dnp);
 return (error);
}
