
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int aio_fildes; size_t aio_offset; size_t aio_nbytes; int * aio_buf; } ;
typedef size_t off_t ;


 int EX_IOERR ;
 size_t MAXIO ;
 int MAXIOS ;
 int aio_waitcomplete (struct aiocb**,int *) ;
 int aio_write (struct aiocb*) ;
 int * buf ;
 int bzero (struct aiocb*,int) ;
 int err (int ,char*) ;
 int pwrite (int,int *,size_t,size_t) ;

__attribute__((used)) static void
parwrite(int fd, size_t size, off_t off)
{
 struct aiocb aios[MAXIOS];
 off_t o;
 int n, error;
 struct aiocb *aiop;


 for (n = 0, o = 0; size > MAXIO; n++, size -= MAXIO, o += MAXIO) {
  aiop = &aios[n];
  bzero(aiop, sizeof(*aiop));
  aiop->aio_buf = &buf[o];
  aiop->aio_fildes = fd;
  aiop->aio_offset = off + o;
  aiop->aio_nbytes = MAXIO;
  error = aio_write(aiop);
  if (error != 0)
   err(EX_IOERR, "AIO write submit error");
 }

 error = pwrite(fd, &buf[o], size, off + o);
 if (error < 0)
  err(EX_IOERR, "Sync write error");
 for (; n > 0; n--) {
  error = aio_waitcomplete(&aiop, ((void*)0));
  if (error < 0)
   err(EX_IOERR, "AIO write wait error");
 }
}
