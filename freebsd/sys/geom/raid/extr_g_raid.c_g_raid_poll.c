
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_softc {scalar_t__ sc_geom; int sc_lock; int sc_queue_mtx; int sc_queue; int sc_events; } ;
struct g_raid_event {int dummy; } ;
struct bio {TYPE_1__* bio_from; } ;
struct TYPE_2__ {scalar_t__ geom; } ;


 struct g_raid_event* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct g_raid_event*,int ) ;
 struct bio* bioq_takefirst (int *) ;
 int e_next ;
 int g_raid_disk_done_request (struct bio*) ;
 int g_raid_handle_event (struct g_raid_softc*,struct g_raid_event*) ;
 int g_raid_start_request (struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid_poll(struct g_raid_softc *sc)
{
 struct g_raid_event *ep;
 struct bio *bp;

 sx_xlock(&sc->sc_lock);
 mtx_lock(&sc->sc_queue_mtx);




 ep = TAILQ_FIRST(&sc->sc_events);
 if (ep != ((void*)0)) {
  TAILQ_REMOVE(&sc->sc_events, ep, e_next);
  mtx_unlock(&sc->sc_queue_mtx);
  g_raid_handle_event(sc, ep);
  goto out;
 }
 bp = bioq_takefirst(&sc->sc_queue);
 if (bp != ((void*)0)) {
  mtx_unlock(&sc->sc_queue_mtx);
  if (bp->bio_from == ((void*)0) ||
      bp->bio_from->geom != sc->sc_geom)
   g_raid_start_request(bp);
  else
   g_raid_disk_done_request(bp);
 }
out:
 sx_xunlock(&sc->sc_lock);
}
