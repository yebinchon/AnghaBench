
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int sc_events_mtx; int sc_events; } ;
struct g_raid3_event {int dummy; } ;


 struct g_raid3_event* TAILQ_FIRST (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct g_raid3_event *
g_raid3_event_get(struct g_raid3_softc *sc)
{
 struct g_raid3_event *ep;

 mtx_lock(&sc->sc_events_mtx);
 ep = TAILQ_FIRST(&sc->sc_events);
 mtx_unlock(&sc->sc_events_mtx);
 return (ep);
}
