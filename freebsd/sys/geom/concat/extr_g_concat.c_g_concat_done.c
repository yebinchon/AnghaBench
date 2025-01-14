
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_concat_softc {int sc_lock; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_completed; TYPE_2__* bio_to; struct bio* bio_parent; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_concat_softc* softc; } ;


 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_concat_done(struct bio *bp)
{
 struct g_concat_softc *sc;
 struct bio *pbp;

 pbp = bp->bio_parent;
 sc = pbp->bio_to->geom->softc;
 mtx_lock(&sc->sc_lock);
 if (pbp->bio_error == 0)
  pbp->bio_error = bp->bio_error;
 pbp->bio_completed += bp->bio_completed;
 pbp->bio_inbed++;
 if (pbp->bio_children == pbp->bio_inbed) {
  mtx_unlock(&sc->sc_lock);
  g_io_deliver(pbp, pbp->bio_error);
 } else
  mtx_unlock(&sc->sc_lock);
 g_destroy_bio(bp);
}
