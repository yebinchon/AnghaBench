
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aio_error_args {int aiocbp; } ;


 int aiocb_ops ;
 int kern_aio_error (struct thread*,int ,int *) ;

int
sys_aio_error(struct thread *td, struct aio_error_args *uap)
{

 return (kern_aio_error(td, uap->aiocbp, &aiocb_ops));
}
