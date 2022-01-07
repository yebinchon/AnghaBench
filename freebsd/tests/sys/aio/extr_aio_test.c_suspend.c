
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct aiocb const aiocb ;
typedef int ssize_t ;


 int aio_return (struct aiocb const*) ;
 int aio_suspend (struct aiocb const* const*,int,int *) ;

__attribute__((used)) static ssize_t
suspend(struct aiocb *aio)
{
 const struct aiocb *const iocbs[] = {aio};
 int error;

 error = aio_suspend(iocbs, 1, ((void*)0));
 if (error == 0)
  return (aio_return(aio));
 else
  return (error);
}
