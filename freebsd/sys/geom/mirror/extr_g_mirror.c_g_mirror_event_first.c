
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_events_mtx; int sc_events; } ;
struct g_mirror_event {int dummy; } ;


 struct g_mirror_event* TAILQ_FIRST (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct g_mirror_event *
g_mirror_event_first(struct g_mirror_softc *sc)
{
 struct g_mirror_event *ep;

 mtx_lock(&sc->sc_events_mtx);
 ep = TAILQ_FIRST(&sc->sc_events);
 mtx_unlock(&sc->sc_events_mtx);
 return (ep);
}
