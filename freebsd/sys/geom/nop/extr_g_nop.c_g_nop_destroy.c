
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_nop_softc {int dummy; } ;
struct g_geom {int name; int provider; struct g_nop_softc* softc; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_NOP_DEBUG (int,char*,int ,...) ;
 struct g_provider* LIST_FIRST (int *) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int) ;

__attribute__((used)) static int
g_nop_destroy(struct g_geom *gp, boolean_t force)
{
 struct g_nop_softc *sc;
 struct g_provider *pp;

 g_topology_assert();
 sc = gp->softc;
 if (sc == ((void*)0))
  return (ENXIO);
 pp = LIST_FIRST(&gp->provider);
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  if (force) {
   G_NOP_DEBUG(0, "Device %s is still open, so it "
       "can't be definitely removed.", pp->name);
  } else {
   G_NOP_DEBUG(1, "Device %s is still open (r%dw%de%d).",
       pp->name, pp->acr, pp->acw, pp->ace);
   return (EBUSY);
  }
 } else {
  G_NOP_DEBUG(0, "Device %s removed.", gp->name);
 }

 g_wither_geom(gp, ENXIO);

 return (0);
}
