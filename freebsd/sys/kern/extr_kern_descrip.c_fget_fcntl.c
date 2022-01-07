
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
typedef int seqc_t ;
typedef int cap_rights_t ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int CAP_FCNTL ;
 int MPASS (int ) ;
 int cap_fcntl_check (struct filedesc*,int,int) ;
 int cap_rights_is_set (int *,int ) ;
 int fd_modified (struct filedesc*,int,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_unlocked (struct filedesc*,int,int *,struct file**,int *) ;

int
fget_fcntl(struct thread *td, int fd, cap_rights_t *rightsp, int needfcntl,
    struct file **fpp)
{
 struct filedesc *fdp = td->td_proc->p_fd;

 return (fget_unlocked(fdp, fd, rightsp, fpp, ((void*)0)));
}
