
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfi_disk_softc {int iotask; int tq; int qlock; int bioq; } ;
struct bio {scalar_t__ bio_bcount; scalar_t__ bio_resid; int bio_cmd; int bio_error; int bio_flags; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct cfi_disk_softc* d_drv1; } ;


 int BIO_ERROR ;


 int EINVAL ;
 int biodone (struct bio*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
cfi_disk_strategy(struct bio *bp)
{
 struct cfi_disk_softc *sc = bp->bio_disk->d_drv1;

 if (sc == ((void*)0))
  goto invalid;
 if (bp->bio_bcount == 0) {
  bp->bio_resid = bp->bio_bcount;
  biodone(bp);
  return;
 }
 switch (bp->bio_cmd) {
 case 129:
 case 128:
  mtx_lock(&sc->qlock);

  bioq_insert_tail(&sc->bioq, bp);
  mtx_unlock(&sc->qlock);
  taskqueue_enqueue(sc->tq, &sc->iotask);
  return;
 }

invalid:
 bp->bio_flags |= BIO_ERROR;
 bp->bio_error = EINVAL;
 biodone(bp);
}
