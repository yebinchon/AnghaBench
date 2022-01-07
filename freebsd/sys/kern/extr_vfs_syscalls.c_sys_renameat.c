
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct renameat_args {int new; int newfd; int old; int oldfd; } ;


 int UIO_USERSPACE ;
 int kern_renameat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_renameat(struct thread *td, struct renameat_args *uap)
{

 return (kern_renameat(td, uap->oldfd, uap->old, uap->newfd, uap->new,
     UIO_USERSPACE));
}
