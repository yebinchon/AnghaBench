
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {TYPE_2__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct file* fde_file; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int fdfree (struct filedesc*,int) ;
 int fdrop (struct file*,struct thread*) ;

void
fdclose(struct thread *td, struct file *fp, int idx)
{
 struct filedesc *fdp = td->td_proc->p_fd;

 FILEDESC_XLOCK(fdp);
 if (fdp->fd_ofiles[idx].fde_file == fp) {
  fdfree(fdp, idx);
  FILEDESC_XUNLOCK(fdp);
  fdrop(fp, td);
 } else
  FILEDESC_XUNLOCK(fdp);
}
