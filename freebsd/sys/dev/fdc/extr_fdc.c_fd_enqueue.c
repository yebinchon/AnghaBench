
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdc_mtx; int head; } ;
struct fd_data {int flags; int fd_bq; int toffhandle; int fd_iocount; struct fdc_data* fdc; } ;
struct bio {int dummy; } ;


 int FD_MOTOR ;
 int FD_MOTORWAIT ;
 int bioq_disksort (int *,struct bio*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int callout_stop (int *) ;
 int fd_motor (struct fd_data*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
fd_enqueue(struct fd_data *fd, struct bio *bp)
{
 struct fdc_data *fdc;
 int call;

 call = 0;
 fdc = fd->fdc;
 mtx_lock(&fdc->fdc_mtx);

 if (fd->fd_iocount++ == 0)
  callout_stop(&fd->toffhandle);
 if (fd->flags & FD_MOTOR) {

  bioq_disksort(&fdc->head, bp);
  wakeup(&fdc->head);
 } else {

  bioq_insert_tail(&fd->fd_bq, bp);
  if (!(fd->flags & FD_MOTORWAIT))
   fd_motor(fd, 1);
 }
 mtx_unlock(&fdc->fdc_mtx);
}
