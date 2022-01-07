
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_vfs_softc {int sc_orphaned; scalar_t__ sc_active; int sc_mtx; } ;
struct g_geom {struct g_vfs_softc* softc; int name; } ;
struct g_consumer {struct g_geom* geom; } ;


 int G_T_TOPOLOGY ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_consumer*,int ) ;
 int g_vfs_destroy (struct g_consumer*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_vfs_orphan(struct g_consumer *cp)
{
 struct g_geom *gp;
 struct g_vfs_softc *sc;
 int destroy;

 g_topology_assert();

 gp = cp->geom;
 g_trace(G_T_TOPOLOGY, "g_vfs_orphan(%p(%s))", cp, gp->name);
 sc = gp->softc;
 if (sc == ((void*)0))
  return;
 mtx_lock(&sc->sc_mtx);
 sc->sc_orphaned = 1;
 destroy = (sc->sc_active == 0);
 mtx_unlock(&sc->sc_mtx);
 if (destroy)
  g_vfs_destroy(cp, 0);




}
