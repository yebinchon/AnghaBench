
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct truncate_args {int length; int path; } ;
struct thread {int dummy; } ;


 int UIO_USERSPACE ;
 int kern_truncate (struct thread*,int ,int ,int ) ;

int
sys_truncate(struct thread *td, struct truncate_args *uap)
{

 return (kern_truncate(td, uap->path, UIO_USERSPACE, uap->length));
}
