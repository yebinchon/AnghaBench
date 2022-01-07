
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct vop_close_args {int a_fflag; int a_td; struct ucred* a_cred; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_mount; scalar_t__ v_object; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int na_filerev; } ;
struct nfsnode {int n_flag; int n_error; scalar_t__ n_directio_asyncwr; scalar_t__ n_directio_opens; int n_change; scalar_t__ n_attrstamp; } ;
typedef int gid_t ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; int nm_flag; } ;


 int KASSERT (int,char*) ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int MNT_WAIT ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 int NFSFREECRED (struct ucred*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSMNT_NOCTO ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV3 (struct vnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 int NNONCACHE ;
 struct ucred* NOCRED ;
 int NWRITEERR ;
 int O_DIRECT ;
 TYPE_1__* VFSTONFS (int ) ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int V_SAVE ;
 int ncl_flush (struct vnode*,int ,int ,int,int ) ;
 int ncl_vinvalbuf (struct vnode*,int ,int ,int) ;
 scalar_t__ newnfs_commit_on_close ;
 scalar_t__ newnfs_directio_enable ;
 struct ucred* newnfs_getcred () ;
 scalar_t__ nfs_clean_pages_on_close ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int ) ;
 int nfscl_maperr (int ,int,int ,int ) ;
 scalar_t__ nfscl_mustflush (struct vnode*) ;
 int nfsrpc_close (struct vnode*,int ,int ) ;
 int nfsrpc_getattr (struct vnode*,struct ucred*,int ,struct nfsvattr*,int *) ;
 int vm_object_page_clean (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int
nfs_close(struct vop_close_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);
 struct nfsvattr nfsva;
 struct ucred *cred;
 int error = 0, ret, localcred = 0;
 int fmode = ap->a_fflag;

 if (NFSCL_FORCEDISM(vp->v_mount))
  return (0);



 if (ap->a_cred == NOCRED) {
  cred = newnfs_getcred();
  localcred = 1;
 } else {
  cred = ap->a_cred;
 }
 if (vp->v_type == VREG) {







     if (nfs_clean_pages_on_close && vp->v_object) {
  VM_OBJECT_WLOCK(vp->v_object);
  vm_object_page_clean(vp->v_object, 0, 0, 0);
  VM_OBJECT_WUNLOCK(vp->v_object);
     }
     NFSLOCKNODE(np);
     if (np->n_flag & NMODIFIED) {
  NFSUNLOCKNODE(np);
  if (NFS_ISV3(vp)) {
      int cm = newnfs_commit_on_close ? 1 : 0;
      error = ncl_flush(vp, MNT_WAIT, ap->a_td, cm, 0);

  } else if (NFS_ISV4(vp)) {
   if (nfscl_mustflush(vp) != 0) {
    int cm = newnfs_commit_on_close ? 1 : 0;
    error = ncl_flush(vp, MNT_WAIT, ap->a_td,
        cm, 0);





   }
  } else {
   error = ncl_vinvalbuf(vp, V_SAVE, ap->a_td, 1);
  }
  NFSLOCKNODE(np);
     }
     if (VFSTONFS(vp->v_mount)->nm_negnametimeo == 0) {
      np->n_attrstamp = 0;
      KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(vp);
     }
     if (np->n_flag & NWRITEERR) {
  np->n_flag &= ~NWRITEERR;
  error = np->n_error;
     }
     NFSUNLOCKNODE(np);
 }

 if (NFS_ISV4(vp)) {



  if (error == 0 && nfscl_mustflush(vp) != 0 &&
      vp->v_type == VREG &&
      (VFSTONFS(vp->v_mount)->nm_flag & NFSMNT_NOCTO) == 0) {
   ret = nfsrpc_getattr(vp, cred, ap->a_td, &nfsva,
       ((void*)0));
   if (!ret) {
    np->n_change = nfsva.na_filerev;
    (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0),
        ((void*)0), 0, 0);
   }
  }




  ret = nfsrpc_close(vp, 0, ap->a_td);
  if (!error && ret)
   error = ret;
  if (error)
   error = nfscl_maperr(ap->a_td, error, (uid_t)0,
       (gid_t)0);
 }
 if (newnfs_directio_enable)
  KASSERT((np->n_directio_asyncwr == 0),
   ("nfs_close: dirty unflushed (%d) directio buffers\n",
    np->n_directio_asyncwr));
 if (newnfs_directio_enable && (fmode & O_DIRECT) && (vp->v_type == VREG)) {
  NFSLOCKNODE(np);
  KASSERT((np->n_directio_opens > 0),
   ("nfs_close: unexpectedly value (0) of n_directio_opens\n"));
  np->n_directio_opens--;
  if (np->n_directio_opens == 0)
   np->n_flag &= ~NNONCACHE;
  NFSUNLOCKNODE(np);
 }
 if (localcred)
  NFSFREECRED(cred);
 return (error);
}
