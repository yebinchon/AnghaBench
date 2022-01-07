
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct aiocb_ops {int dummy; } ;
struct aiocb {int dummy; } ;


 int EINVAL ;
 int LIO_SYNC ;
 int O_SYNC ;
 int aio_aqueue (struct thread*,struct aiocb*,int *,int ,struct aiocb_ops*) ;

__attribute__((used)) static int
kern_aio_fsync(struct thread *td, int op, struct aiocb *ujob,
    struct aiocb_ops *ops)
{

 if (op != O_SYNC)
  return (EINVAL);
 return (aio_aqueue(td, ujob, ((void*)0), LIO_SYNC, ops));
}
