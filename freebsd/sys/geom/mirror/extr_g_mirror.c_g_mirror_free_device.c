
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_lock; int sc_done_mtx; int sc_events_mtx; int sc_queue_mtx; } ;


 int M_MIRROR ;
 int free (struct g_mirror_softc*,int ) ;
 int g_topology_assert () ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
g_mirror_free_device(struct g_mirror_softc *sc)
{

 g_topology_assert();

 mtx_destroy(&sc->sc_queue_mtx);
 mtx_destroy(&sc->sc_events_mtx);
 mtx_destroy(&sc->sc_done_mtx);
 sx_destroy(&sc->sc_lock);
 free(sc, M_MIRROR);
}
