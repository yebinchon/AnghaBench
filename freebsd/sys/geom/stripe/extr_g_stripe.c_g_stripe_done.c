
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_stripe_softc {int sc_lock; } ;
struct bio {scalar_t__ bio_cmd; scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; int * bio_driver1; scalar_t__ bio_completed; int * bio_caller1; int * bio_data; int bio_length; int bio_offset; TYPE_2__* bio_to; struct bio* bio_parent; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_stripe_softc* softc; } ;


 scalar_t__ BIO_READ ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,scalar_t__) ;
 int g_stripe_copy (struct g_stripe_softc*,int *,int *,int ,int ,int) ;
 int g_stripe_zone ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uma_zfree (int ,int *) ;

__attribute__((used)) static void
g_stripe_done(struct bio *bp)
{
 struct g_stripe_softc *sc;
 struct bio *pbp;

 pbp = bp->bio_parent;
 sc = pbp->bio_to->geom->softc;
 if (bp->bio_cmd == BIO_READ && bp->bio_caller1 != ((void*)0)) {
  g_stripe_copy(sc, bp->bio_data, bp->bio_caller1, bp->bio_offset,
      bp->bio_length, 1);
  bp->bio_data = bp->bio_caller1;
  bp->bio_caller1 = ((void*)0);
 }
 mtx_lock(&sc->sc_lock);
 if (pbp->bio_error == 0)
  pbp->bio_error = bp->bio_error;
 pbp->bio_completed += bp->bio_completed;
 pbp->bio_inbed++;
 if (pbp->bio_children == pbp->bio_inbed) {
  mtx_unlock(&sc->sc_lock);
  if (pbp->bio_driver1 != ((void*)0))
   uma_zfree(g_stripe_zone, pbp->bio_driver1);
  g_io_deliver(pbp, pbp->bio_error);
 } else
  mtx_unlock(&sc->sc_lock);
 g_destroy_bio(bp);
}
