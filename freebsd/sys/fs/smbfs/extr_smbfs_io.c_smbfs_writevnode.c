
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct smbnode {int n_flag; scalar_t__ n_size; int n_fid; } ;
struct smbmount {int sm_share; } ;
struct smb_cred {int dummy; } ;
typedef int intmax_t ;


 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int IO_APPEND ;
 int IO_SYNC ;
 int NMODIFIED ;
 int SMBERROR (char*) ;
 int SMBVDEBUG (char*,int ,scalar_t__) ;
 int VOP_GETATTR (struct vnode*,int *,struct ucred*) ;
 scalar_t__ VREG ;
 struct smbnode* VTOSMB (struct vnode*) ;
 struct smbmount* VTOSMBFS (struct vnode*) ;
 int smb_makescred (struct smb_cred*,struct thread*,struct ucred*) ;
 int smb_write (int ,int ,struct uio*,struct smb_cred*) ;
 int smbfs_attr_cacheremove (struct vnode*) ;
 int smbfs_free_scred (struct smb_cred*) ;
 struct smb_cred* smbfs_malloc_scred () ;
 int smbfs_vinvalbuf (struct vnode*,struct thread*) ;
 int vattr ;
 scalar_t__ vn_rlimit_fsize (struct vnode*,struct uio*,struct thread*) ;
 int vnode_pager_setsize (struct vnode*,scalar_t__) ;

int
smbfs_writevnode(struct vnode *vp, struct uio *uiop,
 struct ucred *cred, int ioflag)
{
 struct smbmount *smp = VTOSMBFS(vp);
 struct smbnode *np = VTOSMB(vp);
 struct smb_cred *scred;
 struct thread *td;
 int error = 0;

 if (vp->v_type != VREG) {
  SMBERROR("vn types other than VREG unsupported !\n");
  return EIO;
 }
 SMBVDEBUG("ofs=%jd,resid=%zd\n", (intmax_t)uiop->uio_offset,
     uiop->uio_resid);
 if (uiop->uio_offset < 0)
  return EINVAL;


 td = uiop->uio_td;
 if (ioflag & (IO_APPEND | IO_SYNC)) {
  if (np->n_flag & NMODIFIED) {
   smbfs_attr_cacheremove(vp);
   error = smbfs_vinvalbuf(vp, td);
   if (error)
    return error;
  }
  if (ioflag & IO_APPEND) {
   uiop->uio_offset = np->n_size;
  }
 }
 if (uiop->uio_resid == 0)
  return 0;

 if (vn_rlimit_fsize(vp, uiop, td))
  return (EFBIG);

 scred = smbfs_malloc_scred();
 smb_makescred(scred, td, cred);
 error = smb_write(smp->sm_share, np->n_fid, uiop, scred);
 smbfs_free_scred(scred);
 SMBVDEBUG("after: ofs=%jd,resid=%zd\n", (intmax_t)uiop->uio_offset,
     uiop->uio_resid);
 if (!error) {
  if (uiop->uio_offset > np->n_size) {
   np->n_size = uiop->uio_offset;
   vnode_pager_setsize(vp, np->n_size);
  }
 }
 return error;
}
