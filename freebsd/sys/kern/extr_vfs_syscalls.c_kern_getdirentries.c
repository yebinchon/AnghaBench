
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; int v_vflag; TYPE_1__* v_mount; } ;
struct uio {size_t uio_resid; int uio_iovcnt; int uio_segflg; scalar_t__ uio_offset; struct thread* uio_td; int uio_rw; struct iovec* uio_iov; } ;
struct thread {size_t* td_retval; int td_ucred; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
struct file {int f_flag; struct vnode* f_data; struct vnode* f_vnode; int f_cred; } ;
typedef size_t ssize_t ;
typedef scalar_t__ off_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {int mnt_flag; struct vnode* mnt_vnodecovered; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int EBADF ;
 int EINVAL ;
 int FREAD ;
 size_t IOSIZE_MAX ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MNT_UNION ;
 int UIO_READ ;
 scalar_t__ VDIR ;
 int VOP_READDIR (struct vnode*,struct uio*,int ,int*,int *,int *) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREF (struct vnode*) ;
 int VV_ROOT ;
 int cap_read_rights ;
 int fdrop (struct file*,struct thread*) ;
 scalar_t__ foffset_lock (struct file*,int ) ;
 int foffset_unlock (struct file*,scalar_t__,int ) ;
 int getvnode (struct thread*,int,int *,struct file**) ;
 int mac_vnode_check_readdir (int ,struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;

int
kern_getdirentries(struct thread *td, int fd, char *buf, size_t count,
    off_t *basep, ssize_t *residp, enum uio_seg bufseg)
{
 struct vnode *vp;
 struct file *fp;
 struct uio auio;
 struct iovec aiov;
 off_t loff;
 int error, eofflag;
 off_t foffset;

 AUDIT_ARG_FD(fd);
 if (count > IOSIZE_MAX)
  return (EINVAL);
 auio.uio_resid = count;
 error = getvnode(td, fd, &cap_read_rights, &fp);
 if (error != 0)
  return (error);
 if ((fp->f_flag & FREAD) == 0) {
  fdrop(fp, td);
  return (EBADF);
 }
 vp = fp->f_vnode;
 foffset = foffset_lock(fp, 0);
unionread:
 if (vp->v_type != VDIR) {
  error = EINVAL;
  goto fail;
 }
 aiov.iov_base = buf;
 aiov.iov_len = count;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_rw = UIO_READ;
 auio.uio_segflg = bufseg;
 auio.uio_td = td;
 vn_lock(vp, LK_SHARED | LK_RETRY);
 AUDIT_ARG_VNODE1(vp);
 loff = auio.uio_offset = foffset;




  error = VOP_READDIR(vp, &auio, fp->f_cred, &eofflag, ((void*)0),
      ((void*)0));
 foffset = auio.uio_offset;
 if (error != 0) {
  VOP_UNLOCK(vp, 0);
  goto fail;
 }
 if (count == auio.uio_resid &&
     (vp->v_vflag & VV_ROOT) &&
     (vp->v_mount->mnt_flag & MNT_UNION)) {
  struct vnode *tvp = vp;

  vp = vp->v_mount->mnt_vnodecovered;
  VREF(vp);
  fp->f_vnode = vp;
  fp->f_data = vp;
  foffset = 0;
  vput(tvp);
  goto unionread;
 }
 VOP_UNLOCK(vp, 0);
 *basep = loff;
 if (residp != ((void*)0))
  *residp = auio.uio_resid;
 td->td_retval[0] = count - auio.uio_resid;
fail:
 foffset_unlock(fp, foffset, 0);
 fdrop(fp, td);
 return (error);
}
