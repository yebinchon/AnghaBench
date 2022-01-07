
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_geom* geom; } ;
struct g_nop_softc {int sc_lock; int sc_physpath; int sc_head_delay; } ;
struct g_geom {struct g_nop_softc* softc; } ;


 int KASSERT (int ,char*) ;
 int M_GEOM ;
 int TAILQ_EMPTY (int *) ;
 int free (int ,int ) ;
 int g_free (struct g_nop_softc*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
g_nop_providergone(struct g_provider *pp)
{
 struct g_geom *gp = pp->geom;
 struct g_nop_softc *sc = gp->softc;

 KASSERT(TAILQ_EMPTY(&sc->sc_head_delay),
     ("delayed request list is not empty"));

 gp->softc = ((void*)0);
 free(sc->sc_physpath, M_GEOM);
 mtx_destroy(&sc->sc_lock);
 g_free(sc);
}
