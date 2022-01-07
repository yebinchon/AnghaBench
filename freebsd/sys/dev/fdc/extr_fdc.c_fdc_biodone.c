
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdc_data {int fdc_mtx; struct fd_data* fd; struct bio* bp; } ;
struct fd_data {scalar_t__ fd_iocount; TYPE_1__* fdc; int toffhandle; } ;
struct bio {int bio_error; int bio_flags; int * bio_to; } ;
struct TYPE_2__ {scalar_t__ retry; } ;


 int BIO_DONE ;
 int callout_reset (int *,int,int ,struct fd_data*) ;
 int debugflags ;
 int fd_turnoff ;
 int g_io_deliver (struct bio*,int) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,scalar_t__) ;
 int wakeup (struct bio*) ;

__attribute__((used)) static int
fdc_biodone(struct fdc_data *fdc, int error)
{
 struct fd_data *fd;
 struct bio *bp;

 fd = fdc->fd;
 bp = fdc->bp;

 mtx_lock(&fdc->fdc_mtx);
 if (--fd->fd_iocount == 0)
  callout_reset(&fd->toffhandle, 4 * hz, fd_turnoff, fd);
 fdc->bp = ((void*)0);
 fdc->fd = ((void*)0);
 mtx_unlock(&fdc->fdc_mtx);
 if (bp->bio_to != ((void*)0)) {
  if ((debugflags & 2) && fd->fdc->retry > 0)
   printf("retries: %d\n", fd->fdc->retry);
  g_io_deliver(bp, error);
  return (0);
 }
 bp->bio_error = error;
 bp->bio_flags |= BIO_DONE;
 wakeup(bp);
 return (0);
}
