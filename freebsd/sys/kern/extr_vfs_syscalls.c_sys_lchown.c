
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lchown_args {int gid; int uid; int path; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int UIO_USERSPACE ;
 int kern_fchownat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_lchown(struct thread *td, struct lchown_args *uap)
{

 return (kern_fchownat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->uid, uap->gid, AT_SYMLINK_NOFOLLOW));
}
