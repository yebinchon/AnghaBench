
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fchmodat_args {int flag; int mode; int path; int fd; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int UIO_USERSPACE ;
 int kern_fchmodat (struct thread*,int ,int ,int ,int ,int) ;

int
sys_fchmodat(struct thread *td, struct fchmodat_args *uap)
{

 if ((uap->flag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);

 return (kern_fchmodat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->mode, uap->flag));
}
