
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_sched_softc {int sc_mtx; } ;
struct g_geom {struct g_sched_softc* softc; } ;


 int mtx_unlock (int *) ;

void
g_sched_unlock(struct g_geom *gp)
{
 struct g_sched_softc *sc = gp->softc;

 mtx_unlock(&sc->sc_mtx);
}
