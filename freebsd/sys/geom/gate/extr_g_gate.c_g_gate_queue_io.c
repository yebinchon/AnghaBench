
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_gate_softc {int sc_flags; scalar_t__ sc_queue_size; scalar_t__ sc_queue_count; int sc_queue_mtx; int sc_inqueue; scalar_t__ sc_seq; } ;
struct bio {void* bio_driver1; TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_gate_softc* softc; } ;


 int ENOMEM ;
 int ENXIO ;
 int G_GATE_FLAG_DESTROY ;
 int G_GATE_LOGREQ (int,struct bio*,char*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_gate_softc*) ;

__attribute__((used)) static void
g_gate_queue_io(struct bio *bp)
{
 struct g_gate_softc *sc;

 sc = bp->bio_to->geom->softc;
 if (sc == ((void*)0) || (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0) {
  g_io_deliver(bp, ENXIO);
  return;
 }

 mtx_lock(&sc->sc_queue_mtx);

 if (sc->sc_queue_size > 0 && sc->sc_queue_count > sc->sc_queue_size) {
  mtx_unlock(&sc->sc_queue_mtx);
  G_GATE_LOGREQ(1, bp, "Queue full, request canceled.");
  g_io_deliver(bp, ENOMEM);
  return;
 }

 bp->bio_driver1 = (void *)sc->sc_seq;
 sc->sc_seq++;
 sc->sc_queue_count++;

 bioq_insert_tail(&sc->sc_inqueue, bp);
 wakeup(sc);

 mtx_unlock(&sc->sc_queue_mtx);
}
