
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_spa {int spa_g_mtx; int spa_g_queue; int spa_g_stat_mtx; int spa_g_devstat; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_spa* softc; } ;


 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int bioq_disksort (int *,struct bio*) ;
 int devstat_start_transaction_bio (int ,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
nvdimm_spa_g_start(struct bio *bp)
{
 struct g_spa *sc;

 sc = bp->bio_to->geom->softc;
 if (bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE) {
  mtx_lock(&sc->spa_g_stat_mtx);
  devstat_start_transaction_bio(sc->spa_g_devstat, bp);
  mtx_unlock(&sc->spa_g_stat_mtx);
 }
 mtx_lock(&sc->spa_g_mtx);
 bioq_disksort(&sc->spa_g_queue, bp);
 wakeup(&sc->spa_g_queue);
 mtx_unlock(&sc->spa_g_mtx);
}
