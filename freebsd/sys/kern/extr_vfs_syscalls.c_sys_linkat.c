
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linkat_args {int flag; int path2; int path1; int fd2; int fd1; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_FOLLOW ;
 int BENEATH ;
 int EINVAL ;
 int FOLLOW ;
 int NOFOLLOW ;
 int UIO_USERSPACE ;
 int kern_linkat (struct thread*,int ,int ,int ,int ,int ,int) ;

int
sys_linkat(struct thread *td, struct linkat_args *uap)
{
 int flag;

 flag = uap->flag;
 if ((flag & ~(AT_SYMLINK_FOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);

 return (kern_linkat(td, uap->fd1, uap->fd2, uap->path1, uap->path2,
     UIO_USERSPACE, ((flag & AT_SYMLINK_FOLLOW) != 0 ? FOLLOW :
     NOFOLLOW) | ((flag & AT_BENEATH) != 0 ? BENEATH : 0)));
}
