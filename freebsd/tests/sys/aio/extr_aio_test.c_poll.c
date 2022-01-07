
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;
typedef int ssize_t ;


 int EINPROGRESS ;
 int aio_error (struct aiocb*) ;
 int aio_return (struct aiocb*) ;
 int usleep (int) ;

__attribute__((used)) static ssize_t
poll(struct aiocb *aio)
{
 int error;

 while ((error = aio_error(aio)) == EINPROGRESS)
  usleep(25000);
 if (error)
  return (error);
 else
  return (aio_return(aio));
}
