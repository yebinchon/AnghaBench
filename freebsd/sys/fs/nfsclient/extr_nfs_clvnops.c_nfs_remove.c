
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_remove_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {int va_nlink; } ;
struct nfsnode {scalar_t__ n_attrstamp; scalar_t__ n_sillyrename; } ;
struct componentname {int cn_flags; int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;


 int EINTR ;
 int EIO ;
 int ENOENT ;
 int EPERM ;
 int HASBUF ;
 int KASSERT (int,char*) ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ VDIR ;
 scalar_t__ VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int ncl_vinvalbuf (struct vnode*,int ,int ,int) ;
 int nfs_removerpc (struct vnode*,struct vnode*,int ,int ,int ,int ) ;
 int nfs_sillyrename (struct vnode*,struct vnode*,struct componentname*) ;
 int vrefcnt (struct vnode*) ;

__attribute__((used)) static int
nfs_remove(struct vop_remove_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsnode *np = VTONFS(vp);
 int error = 0;
 struct vattr vattr;

 KASSERT((cnp->cn_flags & HASBUF) != 0, ("nfs_remove: no name"));
 KASSERT(vrefcnt(vp) > 0, ("nfs_remove: bad v_usecount"));
 if (vp->v_type == VDIR)
  error = EPERM;
 else if (vrefcnt(vp) == 1 || (np->n_sillyrename &&
     VOP_GETATTR(vp, &vattr, cnp->cn_cred) == 0 &&
     vattr.va_nlink > 1)) {







  cache_purge(vp);




  error = ncl_vinvalbuf(vp, 0, cnp->cn_thread, 1);
  if (error != EINTR && error != EIO)

   error = nfs_removerpc(dvp, vp, cnp->cn_nameptr,
       cnp->cn_namelen, cnp->cn_cred, cnp->cn_thread);






  if (error == ENOENT)
   error = 0;
 } else if (!np->n_sillyrename)
  error = nfs_sillyrename(dvp, vp, cnp);
 NFSLOCKNODE(np);
 np->n_attrstamp = 0;
 NFSUNLOCKNODE(np);
 KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(vp);
 return (error);
}
