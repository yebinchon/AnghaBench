
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct md_s {int queue_mtx; int bio_queue; int stat_mtx; int devstat; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct md_s* softc; } ;


 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int bioq_disksort (int *,struct bio*) ;
 int devstat_start_transaction_bio (int ,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct md_s*) ;

__attribute__((used)) static void
g_md_start(struct bio *bp)
{
 struct md_s *sc;

 sc = bp->bio_to->geom->softc;
 if ((bp->bio_cmd == BIO_READ) || (bp->bio_cmd == BIO_WRITE)) {
  mtx_lock(&sc->stat_mtx);
  devstat_start_transaction_bio(sc->devstat, bp);
  mtx_unlock(&sc->stat_mtx);
 }
 mtx_lock(&sc->queue_mtx);
 bioq_disksort(&sc->bio_queue, bp);
 wakeup(sc);
 mtx_unlock(&sc->queue_mtx);
}
