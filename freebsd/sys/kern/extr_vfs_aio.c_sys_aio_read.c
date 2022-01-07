
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aio_read_args {int aiocbp; } ;


 int LIO_READ ;
 int aio_aqueue (struct thread*,int ,int *,int ,int *) ;
 int aiocb_ops ;

int
sys_aio_read(struct thread *td, struct aio_read_args *uap)
{

 return (aio_aqueue(td, uap->aiocbp, ((void*)0), LIO_READ, &aiocb_ops));
}
