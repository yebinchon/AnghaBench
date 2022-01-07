
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct filedesc {int fd_refcnt; int fd_nfiles; TYPE_1__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct filedesc* p_fd; } ;
struct TYPE_3__ {struct file* fde_file; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int closef (struct file*,struct thread*) ;
 int fdfree (struct filedesc*,int) ;
 scalar_t__ is_unsafe (struct file*) ;
 int knote_fdclose (struct thread*,int) ;

void
fdsetugidsafety(struct thread *td)
{
 struct filedesc *fdp;
 struct file *fp;
 int i;

 fdp = td->td_proc->p_fd;
 KASSERT(fdp->fd_refcnt == 1, ("the fdtable should not be shared"));
 MPASS(fdp->fd_nfiles >= 3);
 for (i = 0; i <= 2; i++) {
  fp = fdp->fd_ofiles[i].fde_file;
  if (fp != ((void*)0) && is_unsafe(fp)) {
   FILEDESC_XLOCK(fdp);
   knote_fdclose(td, i);




   fdfree(fdp, i);
   FILEDESC_XUNLOCK(fdp);
   (void) closef(fp, td);
  }
 }
}
