
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtblk_softc {int vtblk_flags; int vtblk_bioq; } ;
struct bio {scalar_t__ bio_cmd; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct vtblk_softc* d_drv1; } ;


 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_WRITE ;
 int EINVAL ;
 int ENXIO ;
 int EROFS ;
 int VTBLK_FLAG_DETACH ;
 int VTBLK_FLAG_READONLY ;
 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int vtblk_bio_done (struct vtblk_softc*,struct bio*,int ) ;
 int vtblk_startio (struct vtblk_softc*) ;

__attribute__((used)) static void
vtblk_strategy(struct bio *bp)
{
 struct vtblk_softc *sc;

 if ((sc = bp->bio_disk->d_drv1) == ((void*)0)) {
  vtblk_bio_done(((void*)0), bp, EINVAL);
  return;
 }





 if (sc->vtblk_flags & VTBLK_FLAG_READONLY &&
     (bp->bio_cmd == BIO_WRITE || bp->bio_cmd == BIO_FLUSH)) {
  vtblk_bio_done(sc, bp, EROFS);
  return;
 }

 VTBLK_LOCK(sc);

 if (sc->vtblk_flags & VTBLK_FLAG_DETACH) {
  VTBLK_UNLOCK(sc);
  vtblk_bio_done(sc, bp, ENXIO);
  return;
 }

 bioq_insert_tail(&sc->vtblk_bioq, bp);
 vtblk_startio(sc);

 VTBLK_UNLOCK(sc);
}
