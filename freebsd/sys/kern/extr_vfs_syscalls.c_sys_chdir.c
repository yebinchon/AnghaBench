
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct chdir_args {int path; } ;


 int UIO_USERSPACE ;
 int kern_chdir (struct thread*,int ,int ) ;

int
sys_chdir(struct thread *td, struct chdir_args *uap)
{

 return (kern_chdir(td, uap->path, UIO_USERSPACE));
}
