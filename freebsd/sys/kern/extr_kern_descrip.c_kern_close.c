
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int AUDIT_SYSCLOSE (struct thread*,int) ;
 int EBADF ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int closefp (struct filedesc*,int,struct file*,struct thread*,int) ;
 int fdfree (struct filedesc*,int) ;
 struct file* fget_locked (struct filedesc*,int) ;

int
kern_close(struct thread *td, int fd)
{
 struct filedesc *fdp;
 struct file *fp;

 fdp = td->td_proc->p_fd;

 AUDIT_SYSCLOSE(td, fd);

 FILEDESC_XLOCK(fdp);
 if ((fp = fget_locked(fdp, fd)) == ((void*)0)) {
  FILEDESC_XUNLOCK(fdp);
  return (EBADF);
 }
 fdfree(fdp, fd);


 return (closefp(fdp, fd, fp, td, 1));
}
