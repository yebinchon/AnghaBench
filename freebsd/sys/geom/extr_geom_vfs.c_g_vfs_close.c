
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_vfs_softc {int sc_orphaned; int sc_mtx; TYPE_1__* sc_bo; } ;
struct g_geom {struct g_vfs_softc* softc; } ;
struct g_consumer {int * provider; int private; struct g_geom* geom; } ;
struct TYPE_2__ {int bo_private; } ;


 int ENXIO ;
 int V_SAVE ;
 int bufobj_invalbuf (TYPE_1__*,int ,int ,int ) ;
 int g_free (struct g_vfs_softc*) ;
 int g_topology_assert () ;
 int g_wither_geom_close (struct g_geom*,int ) ;
 int mtx_destroy (int *) ;

void
g_vfs_close(struct g_consumer *cp)
{
 struct g_geom *gp;
 struct g_vfs_softc *sc;

 g_topology_assert();

 gp = cp->geom;
 sc = gp->softc;
 bufobj_invalbuf(sc->sc_bo, V_SAVE, 0, 0);
 sc->sc_bo->bo_private = cp->private;
 gp->softc = ((void*)0);
 mtx_destroy(&sc->sc_mtx);
 if (!sc->sc_orphaned || cp->provider == ((void*)0))
  g_wither_geom_close(gp, ENXIO);
 g_free(sc);
}
