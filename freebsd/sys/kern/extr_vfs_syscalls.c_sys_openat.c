
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct openat_args {int mode; int flag; int path; int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int UIO_USERSPACE ;
 int kern_openat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_openat(struct thread *td, struct openat_args *uap)
{

 AUDIT_ARG_FD(uap->fd);
 return (kern_openat(td, uap->fd, uap->path, UIO_USERSPACE, uap->flag,
     uap->mode));
}
