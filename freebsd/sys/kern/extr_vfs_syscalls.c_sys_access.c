
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct access_args {int amode; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_accessat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_access(struct thread *td, struct access_args *uap)
{

 return (kern_accessat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     0, uap->amode));
}
