
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xbd_softc {int xbd_io_lock; } ;
struct bio {int bio_bcount; int bio_resid; int bio_flags; int bio_error; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct xbd_softc* d_drv1; } ;


 int BIO_ERROR ;
 int EINVAL ;
 int biodone (struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xbd_enqueue_bio (struct xbd_softc*,struct bio*) ;
 int xbd_startio (struct xbd_softc*) ;

__attribute__((used)) static void
xbd_strategy(struct bio *bp)
{
 struct xbd_softc *sc = bp->bio_disk->d_drv1;


 if (sc == ((void*)0)) {
  bp->bio_error = EINVAL;
  bp->bio_flags |= BIO_ERROR;
  bp->bio_resid = bp->bio_bcount;
  biodone(bp);
  return;
 }




 mtx_lock(&sc->xbd_io_lock);

 xbd_enqueue_bio(sc, bp);
 xbd_startio(sc);

 mtx_unlock(&sc->xbd_io_lock);
 return;
}
