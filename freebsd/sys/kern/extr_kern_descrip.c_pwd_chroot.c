
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {scalar_t__ fd_rdir; struct vnode* fd_jdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int chroot_allow_open_directories ;
 int chroot_refuse_vdir_fds (struct filedesc*) ;
 scalar_t__ rootvnode ;
 int vrefact (struct vnode*) ;
 int vrele (struct vnode*) ;

int
pwd_chroot(struct thread *td, struct vnode *vp)
{
 struct filedesc *fdp;
 struct vnode *oldvp;
 int error;

 fdp = td->td_proc->p_fd;
 FILEDESC_XLOCK(fdp);
 if (chroot_allow_open_directories == 0 ||
     (chroot_allow_open_directories == 1 && fdp->fd_rdir != rootvnode)) {
  error = chroot_refuse_vdir_fds(fdp);
  if (error != 0) {
   FILEDESC_XUNLOCK(fdp);
   return (error);
  }
 }
 oldvp = fdp->fd_rdir;
 vrefact(vp);
 fdp->fd_rdir = vp;
 if (fdp->fd_jdir == ((void*)0)) {
  vrefact(vp);
  fdp->fd_jdir = vp;
 }
 FILEDESC_XUNLOCK(fdp);
 vrele(oldvp);
 return (0);
}
