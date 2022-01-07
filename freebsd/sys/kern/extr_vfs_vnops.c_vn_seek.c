
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_size; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {scalar_t__ tdu_off; } ;
struct thread {TYPE_1__ td_uretoff; struct ucred* td_ucred; } ;
struct file {struct vnode* f_vnode; } ;
typedef scalar_t__ off_t ;


 int DIOCGMEDIASIZE ;
 int EINVAL ;
 int ENOTTY ;
 int EOVERFLOW ;
 int FIOSEEKDATA ;
 int FIOSEEKHOLE ;
 int FOF_NOUPDATE ;
 int LK_RETRY ;
 int LK_SHARED ;



 scalar_t__ OFF_MAX ;


 scalar_t__ VCHR ;
 int VFS_KNOTE_UNLOCKED (struct vnode*,int ) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int fo_ioctl (struct file*,int ,scalar_t__*,struct ucred*,struct thread*) ;
 scalar_t__ foffset_lock (struct file*,int ) ;
 int foffset_unlock (struct file*,scalar_t__,int ) ;
 int vn_lock (struct vnode*,int) ;

int
vn_seek(struct file *fp, off_t offset, int whence, struct thread *td)
{
 struct ucred *cred;
 struct vnode *vp;
 struct vattr vattr;
 off_t foffset, size;
 int error, noneg;

 cred = td->td_ucred;
 vp = fp->f_vnode;
 foffset = foffset_lock(fp, 0);
 noneg = (vp->v_type != VCHR);
 error = 0;
 switch (whence) {
 case 132:
  if (noneg &&
      (foffset < 0 ||
      (offset > 0 && foffset > OFF_MAX - offset))) {
   error = EOVERFLOW;
   break;
  }
  offset += foffset;
  break;
 case 130:
  vn_lock(vp, LK_SHARED | LK_RETRY);
  error = VOP_GETATTR(vp, &vattr, cred);
  VOP_UNLOCK(vp, 0);
  if (error)
   break;






  if (vattr.va_size == 0 && vp->v_type == VCHR &&
      fo_ioctl(fp, DIOCGMEDIASIZE, &size, cred, td) == 0)
   vattr.va_size = size;
  if (noneg &&
      (vattr.va_size > OFF_MAX ||
      (offset > 0 && vattr.va_size > OFF_MAX - offset))) {
   error = EOVERFLOW;
   break;
  }
  offset += vattr.va_size;
  break;
 case 131:
  break;
 case 129:
  error = fo_ioctl(fp, FIOSEEKDATA, &offset, cred, td);
  if (error == ENOTTY)
   error = EINVAL;
  break;
 case 128:
  error = fo_ioctl(fp, FIOSEEKHOLE, &offset, cred, td);
  if (error == ENOTTY)
   error = EINVAL;
  break;
 default:
  error = EINVAL;
 }
 if (error == 0 && noneg && offset < 0)
  error = EINVAL;
 if (error != 0)
  goto drop;
 VFS_KNOTE_UNLOCKED(vp, 0);
 td->td_uretoff.tdu_off = offset;
drop:
 foffset_unlock(fp, offset, error != 0 ? FOF_NOUPDATE : 0);
 return (error);
}
