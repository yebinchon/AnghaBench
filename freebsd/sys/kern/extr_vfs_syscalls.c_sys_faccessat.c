
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct faccessat_args {int amode; int flag; int path; int fd; } ;


 int UIO_USERSPACE ;
 int kern_accessat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_faccessat(struct thread *td, struct faccessat_args *uap)
{

 return (kern_accessat(td, uap->fd, uap->path, UIO_USERSPACE, uap->flag,
     uap->amode));
}
