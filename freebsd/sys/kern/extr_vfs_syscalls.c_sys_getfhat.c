
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getfhat_args {int flags; int fhp; int path; int fd; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int UIO_USERSPACE ;
 int kern_getfhat (struct thread*,int,int ,int ,int ,int ) ;

int
sys_getfhat(struct thread *td, struct getfhat_args *uap)
{

 if ((uap->flags & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);
 return (kern_getfhat(td, uap->flags, uap->fd, uap->path, UIO_USERSPACE,
     uap->fhp));
}
