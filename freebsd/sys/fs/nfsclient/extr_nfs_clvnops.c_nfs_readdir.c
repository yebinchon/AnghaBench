
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_readdir_args {int* a_eofflag; int a_cred; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_filerev; int va_mtime; } ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct nfsnode {scalar_t__ n_direofoffset; int n_flag; scalar_t__ n_change; int n_mtime; } ;
typedef int ssize_t ;
struct TYPE_2__ {int direofcache_misses; int direofcache_hits; } ;


 int DIRBLKSIZ ;
 int EINVAL ;
 int EPERM ;
 int NFSINCRGLOBAL (int ) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NFS_TIMESPEC_COMPARE (int *,int *) ;
 int NMODIFIED ;
 scalar_t__ VDIR ;
 scalar_t__ VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int ncl_bioread (struct vnode*,struct uio*,int ,int ) ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static int
nfs_readdir(struct vop_readdir_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);
 struct uio *uio = ap->a_uio;
 ssize_t tresid, left;
 int error = 0;
 struct vattr vattr;

 if (ap->a_eofflag != ((void*)0))
  *ap->a_eofflag = 0;
 if (vp->v_type != VDIR)
  return(EPERM);




 if (np->n_direofoffset > 0 && uio->uio_offset >= np->n_direofoffset &&
     (np->n_flag & NMODIFIED) == 0) {
  if (VOP_GETATTR(vp, &vattr, ap->a_cred) == 0) {
   NFSLOCKNODE(np);
   if ((NFS_ISV4(vp) && np->n_change == vattr.va_filerev) ||
       !NFS_TIMESPEC_COMPARE(&np->n_mtime, &vattr.va_mtime)) {
    NFSUNLOCKNODE(np);
    NFSINCRGLOBAL(nfsstatsv1.direofcache_hits);
    if (ap->a_eofflag != ((void*)0))
     *ap->a_eofflag = 1;
    return (0);
   } else
    NFSUNLOCKNODE(np);
  }
 }







 left = uio->uio_resid % DIRBLKSIZ;
 if (left == uio->uio_resid)
  return (EINVAL);
 uio->uio_resid -= left;




 tresid = uio->uio_resid;
 error = ncl_bioread(vp, uio, 0, ap->a_cred);

 if (!error && uio->uio_resid == tresid) {
  NFSINCRGLOBAL(nfsstatsv1.direofcache_misses);
  if (ap->a_eofflag != ((void*)0))
   *ap->a_eofflag = 1;
 }


 uio->uio_resid += left;
 return (error);
}
