
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; struct mount* v_mount; } ;
struct TYPE_3__ {struct vnode* vp; } ;
struct TYPE_4__ {TYPE_1__ vop_args; } ;
struct vn_io_fault_args {int flags; TYPE_2__ args; struct ucred* cred; int kind; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_segflg; int uio_rw; struct thread* uio_td; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EINVAL ;
 int EIO ;
 int IO_NODELOCKED ;
 int IO_NOMACCHECK ;
 int IO_RANGELOCKED ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ MNT_SHARED_WRITES (struct mount*) ;
 int PCATCH ;
 int UIO_READ ;
 int UIO_WRITE ;
 scalar_t__ VCHR ;
 int VN_IO_FAULT_VOP ;
 int VOP_READ (struct vnode*,struct uio*,int,struct ucred*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VOP_WRITE (struct vnode*,struct uio*,int,struct ucred*) ;
 int V_WAIT ;
 scalar_t__ do_vn_io_fault (struct vnode*,struct uio*) ;
 int mac_vnode_check_read (struct ucred*,struct ucred*,struct vnode*) ;
 int mac_vnode_check_write (struct ucred*,struct ucred*,struct vnode*) ;
 int vn_finished_write (struct mount*) ;
 int vn_io_fault1 (struct vnode*,struct uio*,struct vn_io_fault_args*,struct thread*) ;
 int vn_lock (struct vnode*,int) ;
 void* vn_rangelock_rlock (struct vnode*,scalar_t__,scalar_t__) ;
 int vn_rangelock_unlock (struct vnode*,void*) ;
 void* vn_rangelock_wlock (struct vnode*,scalar_t__,scalar_t__) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

int
vn_rdwr(enum uio_rw rw, struct vnode *vp, void *base, int len, off_t offset,
    enum uio_seg segflg, int ioflg, struct ucred *active_cred,
    struct ucred *file_cred, ssize_t *aresid, struct thread *td)
{
 struct uio auio;
 struct iovec aiov;
 struct mount *mp;
 struct ucred *cred;
 void *rl_cookie;
 struct vn_io_fault_args args;
 int error, lock_flags;

 if (offset < 0 && vp->v_type != VCHR)
  return (EINVAL);
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 aiov.iov_base = base;
 aiov.iov_len = len;
 auio.uio_resid = len;
 auio.uio_offset = offset;
 auio.uio_segflg = segflg;
 auio.uio_rw = rw;
 auio.uio_td = td;
 error = 0;

 if ((ioflg & IO_NODELOCKED) == 0) {
  if ((ioflg & IO_RANGELOCKED) == 0) {
   if (rw == UIO_READ) {
    rl_cookie = vn_rangelock_rlock(vp, offset,
        offset + len);
   } else {
    rl_cookie = vn_rangelock_wlock(vp, offset,
        offset + len);
   }
  } else
   rl_cookie = ((void*)0);
  mp = ((void*)0);
  if (rw == UIO_WRITE) {
   if (vp->v_type != VCHR &&
       (error = vn_start_write(vp, &mp, V_WAIT | PCATCH))
       != 0)
    goto out;
   if (MNT_SHARED_WRITES(mp) ||
       ((mp == ((void*)0)) && MNT_SHARED_WRITES(vp->v_mount)))
    lock_flags = LK_SHARED;
   else
    lock_flags = LK_EXCLUSIVE;
  } else
   lock_flags = LK_SHARED;
  vn_lock(vp, lock_flags | LK_RETRY);
 } else
  rl_cookie = ((void*)0);

 ASSERT_VOP_LOCKED(vp, "IO_NODELOCKED with no vp lock held");
 if (error == 0) {
  if (file_cred != ((void*)0))
   cred = file_cred;
  else
   cred = active_cred;
  if (do_vn_io_fault(vp, &auio)) {
   args.kind = VN_IO_FAULT_VOP;
   args.cred = cred;
   args.flags = ioflg;
   args.args.vop_args.vp = vp;
   error = vn_io_fault1(vp, &auio, &args, td);
  } else if (rw == UIO_READ) {
   error = VOP_READ(vp, &auio, ioflg, cred);
  } else {
   error = VOP_WRITE(vp, &auio, ioflg, cred);
  }
 }
 if (aresid)
  *aresid = auio.uio_resid;
 else
  if (auio.uio_resid && error == 0)
   error = EIO;
 if ((ioflg & IO_NODELOCKED) == 0) {
  VOP_UNLOCK(vp, 0);
  if (mp != ((void*)0))
   vn_finished_write(mp);
 }
 out:
 if (rl_cookie != ((void*)0))
  vn_rangelock_unlock(vp, rl_cookie);
 return (error);
}
