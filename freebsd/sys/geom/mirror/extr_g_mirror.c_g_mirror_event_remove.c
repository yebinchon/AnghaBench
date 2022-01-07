
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_events_mtx; int sc_events; } ;
struct g_mirror_event {int dummy; } ;


 int TAILQ_REMOVE (int *,struct g_mirror_event*,int ) ;
 int e_next ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_mirror_event_remove(struct g_mirror_softc *sc, struct g_mirror_event *ep)
{

 mtx_lock(&sc->sc_events_mtx);
 TAILQ_REMOVE(&sc->sc_events, ep, e_next);
 mtx_unlock(&sc->sc_events_mtx);
}
