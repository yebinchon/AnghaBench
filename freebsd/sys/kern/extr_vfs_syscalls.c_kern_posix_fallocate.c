
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct thread {int td_ucred; int td_proc; } ;
struct mount {int dummy; } ;
struct file {int f_flag; scalar_t__ f_type; int f_cred; struct vnode* f_vnode; TYPE_1__* f_ops; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int fo_flags; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_FILE (int ,struct file*) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int DFLAG_SEEKABLE ;
 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EFBIG ;
 int EINVAL ;
 int ENODEV ;
 int ESPIPE ;
 int FWRITE ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 scalar_t__ OFF_MAX ;
 int PCATCH ;
 int VOP_ALLOCATE (struct vnode*,scalar_t__*,scalar_t__*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VREG ;
 int V_WAIT ;
 int bwillwrite () ;
 int cap_pwrite_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int mac_vnode_check_write (int ,int ,struct vnode*) ;
 int maybe_yield () ;
 int panic (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int ) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

int
kern_posix_fallocate(struct thread *td, int fd, off_t offset, off_t len)
{
 struct file *fp;
 struct mount *mp;
 struct vnode *vp;
 off_t olen, ooffset;
 int error;




 AUDIT_ARG_FD(fd);
 if (offset < 0 || len <= 0)
  return (EINVAL);

 if (offset > OFF_MAX - len)
  return (EFBIG);
 AUDIT_ARG_FD(fd);
 error = fget(td, fd, &cap_pwrite_rights, &fp);
 if (error != 0)
  return (error);
 AUDIT_ARG_FILE(td->td_proc, fp);
 if ((fp->f_ops->fo_flags & DFLAG_SEEKABLE) == 0) {
  error = ESPIPE;
  goto out;
 }
 if ((fp->f_flag & FWRITE) == 0) {
  error = EBADF;
  goto out;
 }
 if (fp->f_type != DTYPE_VNODE) {
  error = ENODEV;
  goto out;
 }
 vp = fp->f_vnode;
 if (vp->v_type != VREG) {
  error = ENODEV;
  goto out;
 }


 for (;;) {
  olen = len;
  ooffset = offset;

  bwillwrite();
  mp = ((void*)0);
  error = vn_start_write(vp, &mp, V_WAIT | PCATCH);
  if (error != 0)
   break;
  error = vn_lock(vp, LK_EXCLUSIVE);
  if (error != 0) {
   vn_finished_write(mp);
   break;
  }
   error = VOP_ALLOCATE(vp, &offset, &len);
  VOP_UNLOCK(vp, 0);
  vn_finished_write(mp);

  if (olen + ooffset != offset + len) {
   panic("offset + len changed from %jx/%jx to %jx/%jx",
       ooffset, olen, offset, len);
  }
  if (error != 0 || len == 0)
   break;
  KASSERT(olen > len, ("Iteration did not make progress?"));
  maybe_yield();
 }
 out:
 fdrop(fp, td);
 return (error);
}
