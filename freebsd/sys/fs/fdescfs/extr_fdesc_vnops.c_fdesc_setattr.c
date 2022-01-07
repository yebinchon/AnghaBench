
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_setattr_args {int a_cred; struct vattr* a_vap; int a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_flags; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef int cap_rights_t ;
struct TYPE_2__ {scalar_t__ fd_type; unsigned int fd_fd; } ;


 int CAP_EXTATTR_SET ;
 int EACCES ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ Froot ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PCATCH ;
 scalar_t__ VNOVAL ;
 int VOP_SETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_1__* VTOFDESC (int ) ;
 int V_WAIT ;
 int cap_rights_init (int *,int ) ;
 struct thread* curthread ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,unsigned int,int ,struct file**) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
fdesc_setattr(struct vop_setattr_args *ap)
{
 struct vattr *vap = ap->a_vap;
 struct vnode *vp;
 struct mount *mp;
 struct file *fp;
 struct thread *td = curthread;
 cap_rights_t rights;
 unsigned fd;
 int error;




 if (VTOFDESC(ap->a_vp)->fd_type == Froot)
  return (EACCES);

 fd = VTOFDESC(ap->a_vp)->fd_fd;




 error = getvnode(td, fd,
     cap_rights_init(&rights, CAP_EXTATTR_SET), &fp);
 if (error) {





  if (error == EINVAL) {
   if (vap->va_flags != VNOVAL)
    error = EOPNOTSUPP;
   else
    error = 0;
  }
  return (error);
 }
 vp = fp->f_vnode;
 if ((error = vn_start_write(vp, &mp, V_WAIT | PCATCH)) == 0) {
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  error = VOP_SETATTR(vp, ap->a_vap, ap->a_cred);
  VOP_UNLOCK(vp, 0);
  vn_finished_write(mp);
 }
 fdrop(fp, td);
 return (error);
}
