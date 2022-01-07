
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_usecount; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_cdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int vrele (struct vnode*) ;

void
pwd_chdir(struct thread *td, struct vnode *vp)
{
 struct filedesc *fdp;
 struct vnode *oldvp;

 fdp = td->td_proc->p_fd;
 FILEDESC_XLOCK(fdp);
 VNASSERT(vp->v_usecount > 0, vp,
     ("chdir to a vnode with zero usecount"));
 oldvp = fdp->fd_cdir;
 fdp->fd_cdir = vp;
 FILEDESC_XUNLOCK(fdp);
 vrele(oldvp);
}
