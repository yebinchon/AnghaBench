
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aio_fsync_args {int aiocbp; int op; } ;


 int aiocb_ops ;
 int kern_aio_fsync (struct thread*,int ,int ,int *) ;

int
sys_aio_fsync(struct thread *td, struct aio_fsync_args *uap)
{

 return (kern_aio_fsync(td, uap->op, uap->aiocbp, &aiocb_ops));
}
