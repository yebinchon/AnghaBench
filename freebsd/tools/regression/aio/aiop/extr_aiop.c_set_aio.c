
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int aio_fildes; int aio_nbytes; char* aio_buf; int aio_offset; } ;
typedef int off_t ;
typedef scalar_t__ iot_t ;


 scalar_t__ IOT_READ ;
 int aio_read (struct aiocb*) ;
 int aio_write (struct aiocb*) ;
 int bzero (struct aiocb*,int) ;
 int err (int,char*) ;

__attribute__((used)) static void
set_aio(struct aiocb *a, iot_t iot, int fd, off_t offset, int size, char *buf)
{
 int r;
 bzero(a, sizeof(*a));
 a->aio_fildes = fd;
 a->aio_nbytes = size;
 a->aio_offset = offset;
 a->aio_buf = buf;
 if (iot == IOT_READ)
  r = aio_read(a);
 else
  r = aio_write(a);
 if (r != 0)
  err(1, "set_aio call failed");
}
