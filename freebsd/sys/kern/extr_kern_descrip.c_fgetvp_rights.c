
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {struct vnode* f_vnode; int * f_ops; } ;
typedef int cap_rights_t ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EBADF ;
 int EINVAL ;
 int badfileops ;
 int fget_cap_locked (struct filedesc*,int,int *,struct file**,struct filecaps*) ;
 int filecaps_free (struct filecaps*) ;
 int vrefact (struct vnode*) ;

int
fgetvp_rights(struct thread *td, int fd, cap_rights_t *needrightsp,
    struct filecaps *havecaps, struct vnode **vpp)
{
 struct filedesc *fdp;
 struct filecaps caps;
 struct file *fp;
 int error;

 fdp = td->td_proc->p_fd;
 error = fget_cap_locked(fdp, fd, needrightsp, &fp, &caps);
 if (error != 0)
  return (error);
 if (fp->f_ops == &badfileops) {
  error = EBADF;
  goto out;
 }
 if (fp->f_vnode == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 *havecaps = caps;
 *vpp = fp->f_vnode;
 vrefact(*vpp);

 return (0);
out:
 filecaps_free(&caps);
 return (error);
}
