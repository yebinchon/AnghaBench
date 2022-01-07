
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int v_mount; } ;
struct nfsvattr {int na_ctime; } ;
struct nfsnode {scalar_t__ n_attrstamp; int n_flag; } ;
struct componentname {int cn_flags; int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;
typedef int gid_t ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; } ;


 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int MAKEENTRY ;
 int MNT_WAIT ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 TYPE_1__* VFSTONFS (int ) ;
 int VOP_FSYNC (struct vnode*,int ,int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int cache_enter_time (struct vnode*,struct vnode*,struct componentname*,int *,int *) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_link (struct vnode*,struct vnode*,int ,int ,int ,int ,struct nfsvattr*,struct nfsvattr*,int*,int*,int *) ;

__attribute__((used)) static int
nfs_link(struct vop_link_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsnode *np, *tdnp;
 struct nfsvattr nfsva, dnfsva;
 int error = 0, attrflag, dattrflag;






 VOP_FSYNC(vp, MNT_WAIT, cnp->cn_thread);

 error = nfsrpc_link(tdvp, vp, cnp->cn_nameptr, cnp->cn_namelen,
     cnp->cn_cred, cnp->cn_thread, &dnfsva, &nfsva, &attrflag,
     &dattrflag, ((void*)0));
 tdnp = VTONFS(tdvp);
 NFSLOCKNODE(tdnp);
 tdnp->n_flag |= NMODIFIED;
 if (dattrflag != 0) {
  NFSUNLOCKNODE(tdnp);
  (void) nfscl_loadattrcache(&tdvp, &dnfsva, ((void*)0), ((void*)0), 0, 1);
 } else {
  tdnp->n_attrstamp = 0;
  NFSUNLOCKNODE(tdnp);
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(tdvp);
 }
 if (attrflag)
  (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0, 1);
 else {
  np = VTONFS(vp);
  NFSLOCKNODE(np);
  np->n_attrstamp = 0;
  NFSUNLOCKNODE(np);
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(vp);
 }






 if (VFSTONFS(vp->v_mount)->nm_negnametimeo != 0 &&
     (cnp->cn_flags & MAKEENTRY) && attrflag != 0 && error == 0) {
  cache_enter_time(tdvp, vp, cnp, &nfsva.na_ctime, ((void*)0));
 }
 if (error && NFS_ISV4(vp))
  error = nfscl_maperr(cnp->cn_thread, error, (uid_t)0,
      (gid_t)0);
 return (error);
}
