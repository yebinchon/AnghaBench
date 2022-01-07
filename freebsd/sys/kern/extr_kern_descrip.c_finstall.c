
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EBADF ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int MPASS (int ) ;
 int _finstall (struct filedesc*,struct file*,int,int,struct filecaps*) ;
 int fdalloc (struct thread*,int ,int*) ;
 int fdrop (struct file*,struct thread*) ;
 int fhold (struct file*) ;

int
finstall(struct thread *td, struct file *fp, int *fd, int flags,
    struct filecaps *fcaps)
{
 struct filedesc *fdp = td->td_proc->p_fd;
 int error;

 MPASS(fd != ((void*)0));

 if (!fhold(fp))
  return (EBADF);
 FILEDESC_XLOCK(fdp);
 if ((error = fdalloc(td, 0, fd))) {
  FILEDESC_XUNLOCK(fdp);
  fdrop(fp, td);
  return (error);
 }
 _finstall(fdp, fp, *fd, flags, fcaps);
 FILEDESC_XUNLOCK(fdp);
 return (0);
}
