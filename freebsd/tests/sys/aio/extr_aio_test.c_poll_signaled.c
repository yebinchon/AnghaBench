
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;
typedef int ssize_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;

 int EINTR ;
 int aio_error (struct aiocb*) ;
 int aio_return (struct aiocb*) ;
 int completions ;
 int errno ;
 int sem_wait (int *) ;

__attribute__((used)) static ssize_t
poll_signaled(struct aiocb *aio)
{
 int error;

 ATF_REQUIRE_EQ(0, sem_wait(&completions));
 error = aio_error(aio);
 switch (error) {
  case 128:
   errno = EINTR;
   return (-1);
  case 0:
   return (aio_return(aio));
  default:
   return (error);
 }
}
