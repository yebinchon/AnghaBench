
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getfh_args {int fhp; int fname; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_getfhat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_getfh(struct thread *td, struct getfh_args *uap)
{

 return (kern_getfhat(td, 0, AT_FDCWD, uap->fname, UIO_USERSPACE,
     uap->fhp));
}
