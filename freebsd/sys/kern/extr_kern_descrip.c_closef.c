
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct flock {void* l_type; scalar_t__ l_len; scalar_t__ l_start; void* l_whence; } ;
struct filedesc_to_leader {scalar_t__ fdl_holdcount; scalar_t__ fdl_wakeup; TYPE_3__* fdl_leader; struct filedesc_to_leader* fdl_next; } ;
struct filedesc {int dummy; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;
typedef int caddr_t ;
struct TYPE_6__ {int p_flag; } ;
struct TYPE_5__ {struct filedesc_to_leader* p_fdtol; struct filedesc* p_fd; TYPE_1__* p_leader; } ;
struct TYPE_4__ {int p_flag; } ;


 scalar_t__ DTYPE_VNODE ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int F_POSIX ;
 void* F_UNLCK ;
 int P_ADVLOCK ;
 void* SEEK_SET ;
 int VOP_ADVLOCK (struct vnode*,int ,void*,struct flock*,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int wakeup (struct filedesc_to_leader*) ;

int
closef(struct file *fp, struct thread *td)
{
 struct vnode *vp;
 struct flock lf;
 struct filedesc_to_leader *fdtol;
 struct filedesc *fdp;
 if (fp->f_type == DTYPE_VNODE && td != ((void*)0)) {
  vp = fp->f_vnode;
  if ((td->td_proc->p_leader->p_flag & P_ADVLOCK) != 0) {
   lf.l_whence = SEEK_SET;
   lf.l_start = 0;
   lf.l_len = 0;
   lf.l_type = F_UNLCK;
   (void) VOP_ADVLOCK(vp, (caddr_t)td->td_proc->p_leader,
       F_UNLCK, &lf, F_POSIX);
  }
  fdtol = td->td_proc->p_fdtol;
  if (fdtol != ((void*)0)) {




   fdp = td->td_proc->p_fd;
   FILEDESC_XLOCK(fdp);
   for (fdtol = fdtol->fdl_next;
       fdtol != td->td_proc->p_fdtol;
       fdtol = fdtol->fdl_next) {
    if ((fdtol->fdl_leader->p_flag &
        P_ADVLOCK) == 0)
     continue;
    fdtol->fdl_holdcount++;
    FILEDESC_XUNLOCK(fdp);
    lf.l_whence = SEEK_SET;
    lf.l_start = 0;
    lf.l_len = 0;
    lf.l_type = F_UNLCK;
    vp = fp->f_vnode;
    (void) VOP_ADVLOCK(vp,
        (caddr_t)fdtol->fdl_leader, F_UNLCK, &lf,
        F_POSIX);
    FILEDESC_XLOCK(fdp);
    fdtol->fdl_holdcount--;
    if (fdtol->fdl_holdcount == 0 &&
        fdtol->fdl_wakeup != 0) {
     fdtol->fdl_wakeup = 0;
     wakeup(fdtol);
    }
   }
   FILEDESC_XUNLOCK(fdp);
  }
 }
 return (fdrop(fp, td));
}
