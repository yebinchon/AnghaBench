
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_mkdir_args {struct vnode** a_vpp; struct componentname* a_cnp; struct vattr* a_vap; struct vnode* a_dvp; } ;
struct vnode {scalar_t__ v_type; int v_mount; } ;
struct vattr {int va_gid; int va_uid; scalar_t__ va_type; } ;
struct nfsvattr {int na_ctime; } ;
struct nfsnode {scalar_t__ n_attrstamp; int n_flag; } ;
struct nfsfh {int dummy; } ;
struct componentname {int cn_flags; int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; } ;


 int EEXIST ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int MAKEENTRY ;
 int NFSLOCKNODE (struct nfsnode*) ;
 struct vnode* NFSTOV (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 scalar_t__ VDIR ;
 TYPE_1__* VFSTONFS (int ) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int cache_enter_time (struct vnode*,struct vnode*,struct componentname*,int *,int *) ;
 int nfs_lookitup (struct vnode*,int ,int ,int ,int ,struct nfsnode**) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfscl_nget (int ,struct vnode*,struct nfsfh*,struct componentname*,int ,struct nfsnode**,int *,int ) ;
 int nfsrpc_mkdir (struct vnode*,int ,int ,struct vattr*,int ,int ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int *) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
nfs_mkdir(struct vop_mkdir_args *ap)
{
 struct vnode *dvp = ap->a_dvp;
 struct vattr *vap = ap->a_vap;
 struct componentname *cnp = ap->a_cnp;
 struct nfsnode *np = ((void*)0), *dnp;
 struct vnode *newvp = ((void*)0);
 struct vattr vattr;
 struct nfsfh *nfhp;
 struct nfsvattr nfsva, dnfsva;
 int error = 0, attrflag, dattrflag, ret;

 if ((error = VOP_GETATTR(dvp, &vattr, cnp->cn_cred)) != 0)
  return (error);
 vap->va_type = VDIR;
 error = nfsrpc_mkdir(dvp, cnp->cn_nameptr, cnp->cn_namelen,
     vap, cnp->cn_cred, cnp->cn_thread, &dnfsva, &nfsva, &nfhp,
     &attrflag, &dattrflag, ((void*)0));
 dnp = VTONFS(dvp);
 NFSLOCKNODE(dnp);
 dnp->n_flag |= NMODIFIED;
 if (dattrflag != 0) {
  NFSUNLOCKNODE(dnp);
  (void) nfscl_loadattrcache(&dvp, &dnfsva, ((void*)0), ((void*)0), 0, 1);
 } else {
  dnp->n_attrstamp = 0;
  NFSUNLOCKNODE(dnp);
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(dvp);
 }
 if (nfhp) {
  ret = nfscl_nget(dvp->v_mount, dvp, nfhp, cnp, cnp->cn_thread,
      &np, ((void*)0), LK_EXCLUSIVE);
  if (!ret) {
   newvp = NFSTOV(np);
   if (attrflag)
      (void) nfscl_loadattrcache(&newvp, &nfsva, ((void*)0),
    ((void*)0), 0, 1);
  } else if (!error)
   error = ret;
 }
 if (!error && newvp == ((void*)0)) {
  error = nfs_lookitup(dvp, cnp->cn_nameptr, cnp->cn_namelen,
      cnp->cn_cred, cnp->cn_thread, &np);
  if (!error) {
   newvp = NFSTOV(np);
   if (newvp->v_type != VDIR)
    error = EEXIST;
  }
 }
 if (error) {
  if (newvp)
   vput(newvp);
  if (NFS_ISV4(dvp))
   error = nfscl_maperr(cnp->cn_thread, error,
       vap->va_uid, vap->va_gid);
 } else {






  if (VFSTONFS(dvp->v_mount)->nm_negnametimeo != 0 &&
      (cnp->cn_flags & MAKEENTRY) &&
      attrflag != 0 && dattrflag != 0)
   cache_enter_time(dvp, newvp, cnp, &nfsva.na_ctime,
       &dnfsva.na_ctime);
  *ap->a_vpp = newvp;
 }
 return (error);
}
