
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fchownat_args {int flag; int gid; int uid; int path; int fd; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int UIO_USERSPACE ;
 int kern_fchownat (struct thread*,int ,int ,int ,int ,int ,int) ;

int
sys_fchownat(struct thread *td, struct fchownat_args *uap)
{

 if ((uap->flag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);

 return (kern_fchownat(td, uap->fd, uap->path, UIO_USERSPACE, uap->uid,
     uap->gid, uap->flag));
}
