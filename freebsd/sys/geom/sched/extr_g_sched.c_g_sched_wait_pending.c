
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_sched_softc {scalar_t__ sc_pending; int sc_mtx; } ;
struct g_geom {struct g_sched_softc* softc; } ;


 int ETIMEDOUT ;
 int g_topology_assert () ;
 int hz ;
 int msleep (struct g_geom*,int *,int ,char*,int) ;
 int ticks ;

__attribute__((used)) static int
g_sched_wait_pending(struct g_geom *gp)
{
 struct g_sched_softc *sc = gp->softc;
 int endticks = ticks + hz;

 g_topology_assert();

 while (sc->sc_pending && endticks - ticks >= 0)
  msleep(gp, &sc->sc_mtx, 0, "sched_wait_pending", hz / 4);

 return (sc->sc_pending ? ETIMEDOUT : 0);
}
