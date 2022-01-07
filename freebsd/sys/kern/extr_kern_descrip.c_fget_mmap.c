
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
typedef int seqc_t ;
typedef int cap_rights_t ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int CAP_MMAP ;
 int MPASS (int ) ;
 int VM_PROT_ALL ;
 int _fget (struct thread*,int,struct file**,int ,int *,int *) ;
 int * cap_rights (struct filedesc*,int) ;
 int cap_rights_is_set (int *,int ) ;
 int cap_rights_to_vmprot (int *) ;
 int fd_modified (struct filedesc*,int,int ) ;
 int fdrop (struct file*,struct thread*) ;

int
fget_mmap(struct thread *td, int fd, cap_rights_t *rightsp, u_char *maxprotp,
    struct file **fpp)
{
 int error;

 error = _fget(td, fd, fpp, 0, rightsp, ((void*)0));
 if (maxprotp != ((void*)0))
  *maxprotp = VM_PROT_ALL;
 return (error);
}
