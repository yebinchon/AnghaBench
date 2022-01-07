
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aio_write_args {int aiocbp; } ;


 int LIO_WRITE ;
 int aio_aqueue (struct thread*,int ,int *,int ,int *) ;
 int aiocb_ops ;

int
sys_aio_write(struct thread *td, struct aio_write_args *uap)
{

 return (aio_aqueue(td, uap->aiocbp, ((void*)0), LIO_WRITE, &aiocb_ops));
}
