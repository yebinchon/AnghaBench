
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {scalar_t__ fd_holdleaderscount; scalar_t__ fd_holdleaderswakeup; int fd_kqlist; } ;
struct file {scalar_t__ f_type; } ;
struct TYPE_2__ {int * p_fdtol; } ;


 scalar_t__ DTYPE_MQUEUE ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XLOCK_ASSERT (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ __predict_false (int) ;
 int closef (struct file*,struct thread*) ;
 int knote_fdclose (struct thread*,int) ;
 int mq_fdclose (struct thread*,int,struct file*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static int
closefp(struct filedesc *fdp, int fd, struct file *fp, struct thread *td,
    int holdleaders)
{
 int error;

 FILEDESC_XLOCK_ASSERT(fdp);

 if (holdleaders) {
  if (td->td_proc->p_fdtol != ((void*)0)) {




   fdp->fd_holdleaderscount++;
  } else {
   holdleaders = 0;
  }
 }







 if (__predict_false(!TAILQ_EMPTY(&fdp->fd_kqlist)))
  knote_fdclose(td, fd);




 if (__predict_false(fp->f_type == DTYPE_MQUEUE))
  mq_fdclose(td, fd, fp);
 FILEDESC_XUNLOCK(fdp);

 error = closef(fp, td);
 if (holdleaders) {
  FILEDESC_XLOCK(fdp);
  fdp->fd_holdleaderscount--;
  if (fdp->fd_holdleaderscount == 0 &&
      fdp->fd_holdleaderswakeup != 0) {
   fdp->fd_holdleaderswakeup = 0;
   wakeup(&fdp->fd_holdleaderscount);
  }
  FILEDESC_XUNLOCK(fdp);
 }
 return (error);
}
