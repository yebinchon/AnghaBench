
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rename_args {int to; int from; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_renameat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_rename(struct thread *td, struct rename_args *uap)
{

 return (kern_renameat(td, AT_FDCWD, uap->from, AT_FDCWD,
     uap->to, UIO_USERSPACE));
}
