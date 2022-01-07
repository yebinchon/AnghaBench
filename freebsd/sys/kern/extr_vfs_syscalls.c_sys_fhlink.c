
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fhlink_args {int fhp; int to; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_fhlinkat (struct thread*,int ,int ,int ,int ) ;

int
sys_fhlink(struct thread *td, struct fhlink_args *uap)
{

 return (kern_fhlinkat(td, AT_FDCWD, uap->to, UIO_USERSPACE, uap->fhp));
}
