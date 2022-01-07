
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_delay_softc {int sc_wait; int sc_geom; } ;


 int callout_reset (int *,int,void (*) (void*),struct g_delay_softc*) ;
 int g_sched_dispatch (int ) ;
 int g_sched_lock (int ) ;
 int g_sched_unlock (int ) ;

__attribute__((used)) static void
g_delay_timeout(void *data)
{
 struct g_delay_softc *sc = data;

 g_sched_lock(sc->sc_geom);
 g_sched_dispatch(sc->sc_geom);
 g_sched_unlock(sc->sc_geom);
 callout_reset(&sc->sc_wait, 1, g_delay_timeout, sc);
}
