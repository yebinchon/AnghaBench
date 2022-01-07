
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umask_args {int newmask; } ;
struct thread {int* td_retval; TYPE_1__* td_proc; } ;
struct filedesc {int fd_cmask; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int ALLPERMS ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;

int
sys_umask(struct thread *td, struct umask_args *uap)
{
 struct filedesc *fdp;

 fdp = td->td_proc->p_fd;
 FILEDESC_XLOCK(fdp);
 td->td_retval[0] = fdp->fd_cmask;
 fdp->fd_cmask = uap->newmask & ALLPERMS;
 FILEDESC_XUNLOCK(fdp);
 return (0);
}
