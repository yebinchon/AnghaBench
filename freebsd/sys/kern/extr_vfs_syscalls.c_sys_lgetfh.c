
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lgetfh_args {int fhp; int fname; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int UIO_USERSPACE ;
 int kern_getfhat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_lgetfh(struct thread *td, struct lgetfh_args *uap)
{

 return (kern_getfhat(td, AT_SYMLINK_NOFOLLOW, AT_FDCWD, uap->fname,
     UIO_USERSPACE, uap->fhp));
}
