
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lchflags_args {int flags; int path; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int UIO_USERSPACE ;
 int kern_chflagsat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_lchflags(struct thread *td, struct lchflags_args *uap)
{

 return (kern_chflagsat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->flags, AT_SYMLINK_NOFOLLOW));
}
