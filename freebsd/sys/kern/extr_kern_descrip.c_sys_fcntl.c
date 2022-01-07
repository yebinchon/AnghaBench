
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fcntl_args {int arg; int cmd; int fd; } ;


 int kern_fcntl_freebsd (struct thread*,int ,int ,int ) ;

int
sys_fcntl(struct thread *td, struct fcntl_args *uap)
{

 return (kern_fcntl_freebsd(td, uap->fd, uap->cmd, uap->arg));
}
