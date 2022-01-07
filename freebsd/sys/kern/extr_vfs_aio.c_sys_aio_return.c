
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aio_return_args {int aiocbp; } ;


 int aiocb_ops ;
 int kern_aio_return (struct thread*,int ,int *) ;

int
sys_aio_return(struct thread *td, struct aio_return_args *uap)
{

 return (kern_aio_return(td, uap->aiocbp, &aiocb_ops));
}
