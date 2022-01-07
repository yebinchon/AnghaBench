
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_delay_softc {int sc_geom; int sc_in_flight; } ;
struct bio {int dummy; } ;


 int g_sched_dispatch (int ) ;

__attribute__((used)) static void
g_delay_done(void *data, struct bio *bp)
{
 struct g_delay_softc *sc = data;

 sc->sc_in_flight--;

 g_sched_dispatch(sc->sc_geom);
}
