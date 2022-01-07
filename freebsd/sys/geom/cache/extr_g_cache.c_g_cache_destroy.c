
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_geom {int * softc; int name; int provider; } ;
struct g_cache_softc {int sc_zone; int sc_mtx; int * sc_desclist; int sc_callout; struct g_geom* sc_geom; } ;
struct g_cache_desc {int dummy; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_CACHE_BUCKETS ;
 int G_CACHE_DEBUG (int,char*,int ,...) ;
 void* LIST_FIRST (int *) ;
 struct g_cache_desc* LIST_NEXT (struct g_cache_desc*,int ) ;
 int callout_drain (int *) ;
 int d_next ;
 int g_cache_free (struct g_cache_softc*,struct g_cache_desc*) ;
 int g_free (struct g_cache_softc*) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
g_cache_destroy(struct g_cache_softc *sc, boolean_t force)
{
 struct g_geom *gp;
 struct g_provider *pp;
 struct g_cache_desc *dp, *dp2;
 int i;

 g_topology_assert();
 if (sc == ((void*)0))
  return (ENXIO);
 gp = sc->sc_geom;
 pp = LIST_FIRST(&gp->provider);
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  if (force) {
   G_CACHE_DEBUG(0, "Device %s is still open, so it "
       "can't be definitely removed.", pp->name);
  } else {
   G_CACHE_DEBUG(1, "Device %s is still open (r%dw%de%d).",
       pp->name, pp->acr, pp->acw, pp->ace);
   return (EBUSY);
  }
 } else {
  G_CACHE_DEBUG(0, "Device %s removed.", gp->name);
 }
 callout_drain(&sc->sc_callout);
 mtx_lock(&sc->sc_mtx);
 for (i = 0; i < G_CACHE_BUCKETS; i++) {
  dp = LIST_FIRST(&sc->sc_desclist[i]);
  while (dp != ((void*)0)) {
   dp2 = LIST_NEXT(dp, d_next);
   g_cache_free(sc, dp);
   dp = dp2;
  }
 }
 mtx_unlock(&sc->sc_mtx);
 mtx_destroy(&sc->sc_mtx);
 uma_zdestroy(sc->sc_zone);
 g_free(sc);
 gp->softc = ((void*)0);
 g_wither_geom(gp, ENXIO);

 return (0);
}
