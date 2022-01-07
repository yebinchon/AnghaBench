
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int n_flag; } ;
struct componentname {int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;
typedef int gid_t ;


 int EINVAL ;
 int ENOENT ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_rmdir (struct vnode*,int ,int ,int ,int ,struct nfsvattr*,int*,int *) ;

__attribute__((used)) static int
nfs_rmdir(struct vop_rmdir_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsnode *dnp;
 struct nfsvattr dnfsva;
 int error, dattrflag;

 if (dvp == vp)
  return (EINVAL);
 error = nfsrpc_rmdir(dvp, cnp->cn_nameptr, cnp->cn_namelen,
     cnp->cn_cred, cnp->cn_thread, &dnfsva, &dattrflag, ((void*)0));
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

 cache_purge(dvp);
 cache_purge(vp);
 if (error && NFS_ISV4(dvp))
  error = nfscl_maperr(cnp->cn_thread, error, (uid_t)0,
      (gid_t)0);



 if (error == ENOENT)
  error = 0;
 return (error);
}
