
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fsync_args {int fd; } ;


 int kern_fsync (struct thread*,int ,int) ;

int
sys_fsync(struct thread *td, struct fsync_args *uap)
{

 return (kern_fsync(td, uap->fd, 1));
}
