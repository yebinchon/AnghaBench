
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
struct g_class {int dummy; } ;


 int ENXIO ;
 int G_T_TOPOLOGY ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_class*) ;
 int g_wither_geom (struct g_geom*,int ) ;
 int gv_worker_exit (struct gv_softc*) ;

__attribute__((used)) static int
gv_unload(struct gctl_req *req, struct g_class *mp, struct g_geom *gp)
{
 struct gv_softc *sc;

 g_trace(G_T_TOPOLOGY, "gv_unload(%p)", mp);

 g_topology_assert();
 sc = gp->softc;

 if (sc != ((void*)0)) {
  gv_worker_exit(sc);
  gp->softc = ((void*)0);
  g_wither_geom(gp, ENXIO);
 }

 return (0);
}
