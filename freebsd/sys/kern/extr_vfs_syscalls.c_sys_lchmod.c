
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lchmod_args {int mode; int path; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int UIO_USERSPACE ;
 int kern_fchmodat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_lchmod(struct thread *td, struct lchmod_args *uap)
{

 return (kern_fchmodat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->mode, AT_SYMLINK_NOFOLLOW));
}
