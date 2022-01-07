
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_drive {int dummy; } ;
struct g_geom {int name; struct gv_softc* softc; } ;
struct g_consumer {struct gv_drive* private; struct g_geom* geom; } ;


 int GV_EVENT_DRIVE_LOST ;
 int G_T_TOPOLOGY ;
 int KASSERT (int ,char*) ;
 int g_topology_assert () ;
 int g_trace (int ,char*,int ) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_drive*,int *,int ,int ) ;

__attribute__((used)) static void
gv_orphan(struct g_consumer *cp)
{
 struct g_geom *gp;
 struct gv_softc *sc;
 struct gv_drive *d;

 g_topology_assert();

 KASSERT(cp != ((void*)0), ("gv_orphan: null cp"));
 gp = cp->geom;
 KASSERT(gp != ((void*)0), ("gv_orphan: null gp"));
 sc = gp->softc;
 KASSERT(sc != ((void*)0), ("gv_orphan: null sc"));
 d = cp->private;
 KASSERT(d != ((void*)0), ("gv_orphan: null d"));

 g_trace(G_T_TOPOLOGY, "gv_orphan(%s)", gp->name);

 gv_post_event(sc, GV_EVENT_DRIVE_LOST, d, ((void*)0), 0, 0);
}
