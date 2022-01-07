
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_geom {int name; int * softc; int access; int provider; } ;
struct g_eli_softc {int sc_queue_mtx; int sc_workers; int sc_flags; struct g_geom* sc_geom; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_ELI_DEBUG (int,char*,int ,...) ;
 int G_ELI_FLAG_DESTROY ;
 int G_ELI_FLAG_RW_DETACH ;
 int LIST_EMPTY (int *) ;
 struct g_provider* LIST_FIRST (int *) ;
 int M_ELI ;
 int PRIBIO ;
 int bzero (struct g_eli_softc*,int) ;
 int free (struct g_eli_softc*,int ) ;
 int g_eli_access ;
 int g_eli_key_destroy (struct g_eli_softc*) ;
 int g_topology_assert () ;
 int g_wither_geom_close (struct g_geom*,int) ;
 int g_wither_provider (struct g_provider*,int) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int wakeup (struct g_eli_softc*) ;

int
g_eli_destroy(struct g_eli_softc *sc, boolean_t force)
{
 struct g_geom *gp;
 struct g_provider *pp;

 g_topology_assert();

 if (sc == ((void*)0))
  return (ENXIO);

 gp = sc->sc_geom;
 pp = LIST_FIRST(&gp->provider);
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  if (force) {
   G_ELI_DEBUG(1, "Device %s is still open, so it "
       "cannot be definitely removed.", pp->name);
   sc->sc_flags |= G_ELI_FLAG_RW_DETACH;
   gp->access = g_eli_access;
   g_wither_provider(pp, ENXIO);
   return (EBUSY);
  } else {
   G_ELI_DEBUG(1,
       "Device %s is still open (r%dw%de%d).", pp->name,
       pp->acr, pp->acw, pp->ace);
   return (EBUSY);
  }
 }

 mtx_lock(&sc->sc_queue_mtx);
 sc->sc_flags |= G_ELI_FLAG_DESTROY;
 wakeup(sc);
 while (!LIST_EMPTY(&sc->sc_workers)) {
  msleep(&sc->sc_workers, &sc->sc_queue_mtx, PRIBIO,
      "geli:destroy", 0);
 }
 mtx_destroy(&sc->sc_queue_mtx);
 gp->softc = ((void*)0);
 g_eli_key_destroy(sc);
 bzero(sc, sizeof(*sc));
 free(sc, M_ELI);

 if (pp == ((void*)0) || (pp->acr == 0 && pp->acw == 0 && pp->ace == 0))
  G_ELI_DEBUG(0, "Device %s destroyed.", gp->name);
 g_wither_geom_close(gp, ENXIO);

 return (0);
}
