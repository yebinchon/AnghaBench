
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lutimes_args {int tptr; int path; } ;


 int UIO_USERSPACE ;
 int kern_lutimes (struct thread*,int ,int ,int ,int ) ;

int
sys_lutimes(struct thread *td, struct lutimes_args *uap)
{

 return (kern_lutimes(td, uap->path, UIO_USERSPACE, uap->tptr,
     UIO_USERSPACE));
}
