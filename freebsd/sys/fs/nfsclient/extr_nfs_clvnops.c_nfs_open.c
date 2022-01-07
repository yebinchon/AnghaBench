
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vm_object_t ;
typedef int uid_t ;
struct vop_open_args {int a_mode; int a_td; int a_cred; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_writecount; int * v_object; int v_mount; } ;
struct vattr {scalar_t__ va_filerev; int va_size; int va_mtime; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {int na_mtime; } ;
struct nfsnode {int n_flag; scalar_t__ n_change; scalar_t__ n_directio_opens; TYPE_1__ n_vattr; int n_mtime; struct ucred* n_writecred; scalar_t__ n_direofoffset; scalar_t__ n_attrstamp; } ;
typedef int gid_t ;


 int EINTR ;
 int EIO ;
 int EOPNOTSUPP ;
 int FWRITE ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int MNT_WAIT ;
 scalar_t__ NFSHASPNFS (int ) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 scalar_t__ NFS_TIMESPEC_COMPARE (int *,int *) ;
 int NMODIFIED ;
 int NNONCACHE ;
 int NWRITEOPENED ;
 int OBJPC_SYNC ;
 int O_DIRECT ;
 scalar_t__ VDIR ;
 int VFSTONFS (int ) ;
 scalar_t__ VLNK ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int V_SAVE ;
 int crfree (struct ucred*) ;
 struct ucred* crhold (int ) ;
 int curthread ;
 int ncl_flush (struct vnode*,int ,int ,int ,int ) ;
 int ncl_vinvalbuf (struct vnode*,int ,int ,int) ;
 scalar_t__ newnfs_directio_enable ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_close (struct vnode*,int ,int ) ;
 int nfsrpc_open (struct vnode*,int,int ,int ) ;
 scalar_t__ vm_object_mightbedirty (int *) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

__attribute__((used)) static int
nfs_open(struct vop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);
 struct vattr vattr;
 int error;
 int fmode = ap->a_mode;
 struct ucred *cred;
 vm_object_t obj;

 if (vp->v_type != VREG && vp->v_type != VDIR && vp->v_type != VLNK)
  return (EOPNOTSUPP);





 if (NFS_ISV4(vp)) {
  error = nfsrpc_open(vp, fmode, ap->a_cred, ap->a_td);
  if (error) {
   error = nfscl_maperr(ap->a_td, error, (uid_t)0,
       (gid_t)0);
   return (error);
  }
 }





 NFSLOCKNODE(np);
 if (np->n_flag & NMODIFIED) {
  NFSUNLOCKNODE(np);
  error = ncl_vinvalbuf(vp, V_SAVE, ap->a_td, 1);
  if (error == EINTR || error == EIO) {
   if (NFS_ISV4(vp))
    (void) nfsrpc_close(vp, 0, ap->a_td);
   return (error);
  }
  NFSLOCKNODE(np);
  np->n_attrstamp = 0;
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(vp);
  if (vp->v_type == VDIR)
   np->n_direofoffset = 0;
  NFSUNLOCKNODE(np);
  error = VOP_GETATTR(vp, &vattr, ap->a_cred);
  if (error) {
   if (NFS_ISV4(vp))
    (void) nfsrpc_close(vp, 0, ap->a_td);
   return (error);
  }
  NFSLOCKNODE(np);
  np->n_mtime = vattr.va_mtime;
  if (NFS_ISV4(vp))
   np->n_change = vattr.va_filerev;
 } else {
  NFSUNLOCKNODE(np);
  error = VOP_GETATTR(vp, &vattr, ap->a_cred);
  if (error) {
   if (NFS_ISV4(vp))
    (void) nfsrpc_close(vp, 0, ap->a_td);
   return (error);
  }
  NFSLOCKNODE(np);
  if ((NFS_ISV4(vp) && np->n_change != vattr.va_filerev) ||
      NFS_TIMESPEC_COMPARE(&np->n_mtime, &vattr.va_mtime)) {
   if (vp->v_type == VDIR)
    np->n_direofoffset = 0;
   NFSUNLOCKNODE(np);
   error = ncl_vinvalbuf(vp, V_SAVE, ap->a_td, 1);
   if (error == EINTR || error == EIO) {
    if (NFS_ISV4(vp))
     (void) nfsrpc_close(vp, 0, ap->a_td);
    return (error);
   }
   NFSLOCKNODE(np);
   np->n_mtime = vattr.va_mtime;
   if (NFS_ISV4(vp))
    np->n_change = vattr.va_filerev;
  }
 }




 if (newnfs_directio_enable && (fmode & O_DIRECT) &&
     (vp->v_type == VREG)) {
  if (np->n_directio_opens == 0) {
   NFSUNLOCKNODE(np);
   error = ncl_vinvalbuf(vp, V_SAVE, ap->a_td, 1);
   if (error) {
    if (NFS_ISV4(vp))
     (void) nfsrpc_close(vp, 0, ap->a_td);
    return (error);
   }
   NFSLOCKNODE(np);
   np->n_flag |= NNONCACHE;
  }
  np->n_directio_opens++;
 }


 if (NFSHASPNFS(VFSTONFS(vp->v_mount)) && (fmode & FWRITE) != 0)
  np->n_flag |= NWRITEOPENED;
 if ((fmode & FWRITE) != 0) {
  cred = np->n_writecred;
  np->n_writecred = crhold(ap->a_cred);
 } else
  cred = ((void*)0);
 NFSUNLOCKNODE(np);

 if (cred != ((void*)0))
  crfree(cred);
 vnode_create_vobject(vp, vattr.va_size, ap->a_td);
 if (vp->v_writecount <= -1) {
  if ((obj = vp->v_object) != ((void*)0) &&
      vm_object_mightbedirty(obj)) {
   VM_OBJECT_WLOCK(obj);
   vm_object_page_clean(obj, 0, 0, OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(obj);
  }


  ncl_flush(vp, MNT_WAIT, curthread, 0, 0);


  np = VTONFS(vp);
  NFSLOCKNODE(np);
  np->n_mtime = np->n_vattr.na_mtime;
  NFSUNLOCKNODE(np);
 }
 return (0);
}
