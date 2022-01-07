
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct chflagsat_args {int atflag; int flags; int path; int fd; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int UIO_USERSPACE ;
 int kern_chflagsat (struct thread*,int ,int ,int ,int ,int) ;

int
sys_chflagsat(struct thread *td, struct chflagsat_args *uap)
{

 if ((uap->atflag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);

 return (kern_chflagsat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->flags, uap->atflag));
}
