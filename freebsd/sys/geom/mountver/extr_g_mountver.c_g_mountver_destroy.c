
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_mountver_softc {struct g_mountver_softc* sc_provider_name; } ;
struct g_geom {struct g_mountver_softc* softc; int name; int provider; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_MOUNTVER_DEBUG (int,char*,int ,...) ;
 struct g_provider* LIST_FIRST (int *) ;
 int g_free (struct g_mountver_softc*) ;
 int g_mountver_discard_queued (struct g_geom*) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int) ;
 int g_wither_provider (struct g_provider*,int) ;

__attribute__((used)) static int
g_mountver_destroy(struct g_geom *gp, boolean_t force)
{
 struct g_mountver_softc *sc;
 struct g_provider *pp;

 g_topology_assert();
 if (gp->softc == ((void*)0))
  return (ENXIO);
 sc = gp->softc;
 pp = LIST_FIRST(&gp->provider);
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  if (force) {
   G_MOUNTVER_DEBUG(0, "Device %s is still open, so it "
       "can't be definitely removed.", pp->name);
  } else {
   G_MOUNTVER_DEBUG(1, "Device %s is still open (r%dw%de%d).",
       pp->name, pp->acr, pp->acw, pp->ace);
   return (EBUSY);
  }
 } else {
  G_MOUNTVER_DEBUG(0, "Device %s removed.", gp->name);
 }
 if (pp != ((void*)0))
  g_wither_provider(pp, ENXIO);
 g_mountver_discard_queued(gp);
 g_free(sc->sc_provider_name);
 g_free(gp->softc);
 gp->softc = ((void*)0);
 g_wither_geom(gp, ENXIO);

 return (0);
}
