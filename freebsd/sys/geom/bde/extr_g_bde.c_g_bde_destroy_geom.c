
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int consumers; } ;
struct g_geom {int consumer; struct g_bde_softc* softc; int provider; int name; } ;
struct g_consumer {int dummy; } ;
struct g_class {int name; } ;
struct g_bde_softc {int dead; int key; int worklist_mutex; } ;


 int EBUSY ;
 int ENXIO ;
 int G_T_TOPOLOGY ;
 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 void* LIST_FIRST (int *) ;
 int PRIBIO ;
 int bzero (int *,int) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 int g_free (struct g_bde_softc*) ;
 int g_topology_assert () ;
 int g_trace (int ,char*,int ,int ) ;
 int g_wither_geom (struct g_geom*,int ) ;
 int hz ;
 int mtx_destroy (int *) ;
 int tsleep (struct g_bde_softc*,int ,char*,int ) ;
 int wakeup (struct g_bde_softc*) ;

__attribute__((used)) static int
g_bde_destroy_geom(struct gctl_req *req, struct g_class *mp, struct g_geom *gp)
{
 struct g_consumer *cp;
 struct g_provider *pp;
 struct g_bde_softc *sc;

 g_trace(G_T_TOPOLOGY, "g_bde_destroy_geom(%s, %s)", mp->name, gp->name);
 g_topology_assert();



 KASSERT(gp != ((void*)0), ("NULL geom"));
 pp = LIST_FIRST(&gp->provider);
 KASSERT(pp != ((void*)0), ("NULL provider"));
 if (pp->acr > 0 || pp->acw > 0 || pp->ace > 0)
  return (EBUSY);
 sc = gp->softc;
 cp = LIST_FIRST(&gp->consumer);
 KASSERT(cp != ((void*)0), ("NULL consumer"));
 sc->dead = 1;
 wakeup(sc);
 g_access(cp, -1, -1, -1);
 g_detach(cp);
 g_destroy_consumer(cp);
 while (sc->dead != 2 && !LIST_EMPTY(&pp->consumers))
  tsleep(sc, PRIBIO, "g_bdedie", hz);
 mtx_destroy(&sc->worklist_mutex);
 bzero(&sc->key, sizeof sc->key);
 g_free(sc);
 g_wither_geom(gp, ENXIO);
 return (0);
}
