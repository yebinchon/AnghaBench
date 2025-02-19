
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct filedesc {int fd_lastfile; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;


 scalar_t__ DTYPE_VNODE ;
 int EPERM ;
 int FILEDESC_LOCK_ASSERT (struct filedesc*) ;
 scalar_t__ VDIR ;
 struct file* fget_locked (struct filedesc*,int) ;

__attribute__((used)) static int
chroot_refuse_vdir_fds(struct filedesc *fdp)
{
 struct vnode *vp;
 struct file *fp;
 int fd;

 FILEDESC_LOCK_ASSERT(fdp);

 for (fd = 0; fd <= fdp->fd_lastfile; fd++) {
  fp = fget_locked(fdp, fd);
  if (fp == ((void*)0))
   continue;
  if (fp->f_type == DTYPE_VNODE) {
   vp = fp->f_vnode;
   if (vp->v_type == VDIR)
    return (EPERM);
  }
 }
 return (0);
}
