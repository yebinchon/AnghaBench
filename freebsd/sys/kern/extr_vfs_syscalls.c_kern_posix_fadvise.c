
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct thread {int td_proc; } ;
struct file {scalar_t__ f_type; struct fadvise_info* f_advice; struct vnode* f_vnode; TYPE_1__* f_ops; } ;
struct fadvise_info {int fa_advice; scalar_t__ fa_start; scalar_t__ fa_end; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int fo_flags; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_FILE (int ,struct file*) ;
 int AUDIT_ARG_VALUE (int) ;
 int DFLAG_SEEKABLE ;
 scalar_t__ DTYPE_VNODE ;
 int EINVAL ;
 int ENODEV ;
 int ESPIPE ;
 int M_FADVISE ;
 int M_WAITOK ;
 scalar_t__ OFF_MAX ;






 int VOP_ADVISE (struct vnode*,scalar_t__,scalar_t__,int) ;
 scalar_t__ VREG ;
 int cap_no_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int free (struct fadvise_info*,int ) ;
 struct fadvise_info* malloc (int,int ,int ) ;
 int mtx_pool_lock (int ,struct file*) ;
 int mtx_pool_unlock (int ,struct file*) ;
 int mtxpool_sleep ;

int
kern_posix_fadvise(struct thread *td, int fd, off_t offset, off_t len,
    int advice)
{
 struct fadvise_info *fa, *new;
 struct file *fp;
 struct vnode *vp;
 off_t end;
 int error;

 if (offset < 0 || len < 0 || offset > OFF_MAX - len)
  return (EINVAL);
 AUDIT_ARG_VALUE(advice);
 switch (advice) {
 case 129:
 case 130:
 case 132:
  new = malloc(sizeof(*fa), M_FADVISE, M_WAITOK);
  break;
 case 131:
 case 128:
 case 133:
  new = ((void*)0);
  break;
 default:
  return (EINVAL);
 }

 AUDIT_ARG_FD(fd);
 error = fget(td, fd, &cap_no_rights, &fp);
 if (error != 0)
  goto out;
 AUDIT_ARG_FILE(td->td_proc, fp);
 if ((fp->f_ops->fo_flags & DFLAG_SEEKABLE) == 0) {
  error = ESPIPE;
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
 if (len == 0)
  end = OFF_MAX;
 else
  end = offset + len - 1;
 switch (advice) {
 case 129:
 case 130:
 case 132:





  mtx_pool_lock(mtxpool_sleep, fp);
  fa = fp->f_advice;
  if (fa != ((void*)0) && fa->fa_advice == advice &&
      ((fa->fa_start <= end && fa->fa_end >= offset) ||
      (end != OFF_MAX && fa->fa_start == end + 1) ||
      (fa->fa_end != OFF_MAX && fa->fa_end + 1 == offset))) {
   if (offset < fa->fa_start)
    fa->fa_start = offset;
   if (end > fa->fa_end)
    fa->fa_end = end;
  } else {
   new->fa_advice = advice;
   new->fa_start = offset;
   new->fa_end = end;
   fp->f_advice = new;
   new = fa;
  }
  mtx_pool_unlock(mtxpool_sleep, fp);
  break;
 case 131:





  mtx_pool_lock(mtxpool_sleep, fp);
  fa = fp->f_advice;
  if (fa != ((void*)0)) {
   if (offset <= fa->fa_start && end >= fa->fa_end) {
    new = fa;
    fp->f_advice = ((void*)0);
   } else if (offset <= fa->fa_start &&
       end >= fa->fa_start)
    fa->fa_start = end + 1;
   else if (offset <= fa->fa_end && end >= fa->fa_end)
    fa->fa_end = offset - 1;
   else if (offset >= fa->fa_start && end <= fa->fa_end) {
    new = fa;
    fp->f_advice = ((void*)0);
   }
  }
  mtx_pool_unlock(mtxpool_sleep, fp);
  break;
 case 128:
 case 133:
  error = VOP_ADVISE(vp, offset, end, advice);
  break;
 }
out:
 if (fp != ((void*)0))
  fdrop(fp, td);
 free(new, M_FADVISE);
 return (error);
}
