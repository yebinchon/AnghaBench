
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_eli_softc {int sc_flags; TYPE_1__* sc_geom; int sc_queue_mtx; int sc_inflight; int sc_queue; } ;
struct g_consumer {int provider; } ;
struct bio {int bio_to; int bio_done; struct bio* bio_driver1; int * bio_driver2; scalar_t__ bio_pflags; } ;
typedef int boolean_t ;
struct TYPE_2__ {int consumer; } ;


 int G_ELI_DEBUG (int ,char*) ;
 int G_ELI_FLAG_SUSPEND ;
 int G_ELI_LOGREQ (int,struct bio*,char*) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int atomic_add_int (int *,int) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int g_eli_read_done ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_eli_softc*) ;

void
g_eli_crypto_read(struct g_eli_softc *sc, struct bio *bp, boolean_t fromworker)
{
 struct g_consumer *cp;
 struct bio *cbp;

 if (!fromworker) {




  mtx_lock(&sc->sc_queue_mtx);
  if (sc->sc_flags & G_ELI_FLAG_SUSPEND) {




   G_ELI_DEBUG(0, "device suspended, move onto queue");
   bioq_insert_tail(&sc->sc_queue, bp);
   mtx_unlock(&sc->sc_queue_mtx);
   wakeup(sc);
   return;
  }
  atomic_add_int(&sc->sc_inflight, 1);
  mtx_unlock(&sc->sc_queue_mtx);
 }
 bp->bio_pflags = 0;
 bp->bio_driver2 = ((void*)0);
 cbp = bp->bio_driver1;
 cbp->bio_done = g_eli_read_done;
 cp = LIST_FIRST(&sc->sc_geom->consumer);
 cbp->bio_to = cp->provider;
 G_ELI_LOGREQ(2, cbp, "Sending request.");



 g_io_request(cbp, cp);
}
