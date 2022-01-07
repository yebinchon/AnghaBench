
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {TYPE_2__* fd_ofiles; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
typedef int seqc_t ;
typedef int cap_rights_t ;
struct TYPE_4__ {int fde_caps; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int EBADF ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int fd_modified (struct filedesc*,int,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_cap_locked (struct filedesc*,int,int *,struct file**,struct filecaps*) ;
 int fget_unlocked (struct filedesc*,int,int *,struct file**,int *) ;
 int fhold (struct file*) ;
 int filecaps_copy (int *,struct filecaps*,int) ;
 int filecaps_fill (struct filecaps*) ;

int
fget_cap(struct thread *td, int fd, cap_rights_t *needrightsp,
    struct file **fpp, struct filecaps *havecapsp)
{
 struct filedesc *fdp = td->td_proc->p_fd;
 int error;

 error = fget_unlocked(fdp, fd, needrightsp, fpp, ((void*)0));
 if (error == 0 && havecapsp != ((void*)0))
  filecaps_fill(havecapsp);
 return (error);
}
