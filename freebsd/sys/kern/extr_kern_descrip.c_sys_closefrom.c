
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct filedesc {int fd_lastfile; TYPE_1__* fd_ofiles; } ;
struct closefrom_args {int lowfd; } ;
struct TYPE_4__ {struct filedesc* p_fd; } ;
struct TYPE_3__ {int * fde_file; } ;


 int AUDIT_ARG_FD (int) ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int kern_close (struct thread*,int) ;

int
sys_closefrom(struct thread *td, struct closefrom_args *uap)
{
 struct filedesc *fdp;
 int fd;

 fdp = td->td_proc->p_fd;
 AUDIT_ARG_FD(uap->lowfd);





 if (uap->lowfd < 0)
  uap->lowfd = 0;
 FILEDESC_SLOCK(fdp);
 for (fd = uap->lowfd; fd <= fdp->fd_lastfile; fd++) {
  if (fdp->fd_ofiles[fd].fde_file != ((void*)0)) {
   FILEDESC_SUNLOCK(fdp);
   (void)kern_close(td, fd);
   FILEDESC_SLOCK(fdp);
  }
 }
 FILEDESC_SUNLOCK(fdp);
 return (0);
}
