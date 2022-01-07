
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fhlinkat_args {int fhp; int to; int tofd; } ;


 int UIO_USERSPACE ;
 int kern_fhlinkat (struct thread*,int ,int ,int ,int ) ;

int
sys_fhlinkat(struct thread *td, struct fhlinkat_args *uap)
{

 return (kern_fhlinkat(td, uap->tofd, uap->to, UIO_USERSPACE, uap->fhp));
}
