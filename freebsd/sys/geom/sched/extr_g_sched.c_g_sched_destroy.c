
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_sched_softc {int sc_flags; int sc_mtx; struct g_gsched* sc_gsched; int sc_data; int * sc_hash; int sc_mask; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_gsched {int (* gs_fini ) (int ) ;} ;
struct g_geom {struct g_sched_softc* softc; int name; int provider; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_SCHED_DEBUG (int,char*,...) ;
 int G_SCHED_PROXYING ;
 struct g_provider* LIST_FIRST (int *) ;
 int g_destroy_proxy (struct g_geom*,struct g_provider*) ;
 struct g_provider* g_detach_proxy (struct g_geom*) ;
 int g_free (struct g_sched_softc*) ;
 int g_gsched_unref (struct g_gsched*) ;
 int g_sched_blackhole ;
 int g_sched_flush_pending (int ) ;
 int g_sched_forced_dispatch (struct g_geom*) ;
 int g_sched_hash_fini (struct g_geom*,int *,int ,struct g_gsched*,int ) ;
 int g_sched_lock (struct g_geom*) ;
 int g_sched_start ;
 int g_sched_unlock (struct g_geom*) ;
 int g_sched_wait_pending (struct g_geom*) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int) ;
 int mtx_destroy (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static int
g_sched_destroy(struct g_geom *gp, boolean_t force)
{
 struct g_provider *pp, *oldpp = ((void*)0);
 struct g_sched_softc *sc;
 struct g_gsched *gsp;
 int error;

 g_topology_assert();
 sc = gp->softc;
 if (sc == ((void*)0))
  return (ENXIO);
 if (!(sc->sc_flags & G_SCHED_PROXYING)) {
  pp = LIST_FIRST(&gp->provider);
  if (pp && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
   const char *msg = force ?
    "but we force removal" : "cannot remove";

   G_SCHED_DEBUG(!force,
       "Device %s is still open (r%dw%de%d), %s.",
       pp->name, pp->acr, pp->acw, pp->ace, msg);
   if (!force)
    return (EBUSY);
  } else {
   G_SCHED_DEBUG(0, "Device %s removed.", gp->name);
  }
 } else
  oldpp = g_detach_proxy(gp);

 gsp = sc->sc_gsched;
 if (gsp) {





  g_sched_lock(gp);







  g_sched_forced_dispatch(gp);
  error = g_sched_wait_pending(gp);

  if (error) {
   if ((sc->sc_flags & G_SCHED_PROXYING) && oldpp) {
    g_sched_flush_pending(force ?
        g_sched_blackhole : g_sched_start);
   }
   if (force) {
    G_SCHED_DEBUG(0, "Pending requests while "
        " destroying geom, some memory leaked.");
   }

   return (error);
  }

  g_sched_unlock(gp);
  g_sched_hash_fini(gp, sc->sc_hash, sc->sc_mask,
      gsp, sc->sc_data);
  sc->sc_hash = ((void*)0);
  gsp->gs_fini(sc->sc_data);
  g_gsched_unref(gsp);
  sc->sc_gsched = ((void*)0);
 } else
  error = 0;

 if ((sc->sc_flags & G_SCHED_PROXYING) && oldpp) {
  error = g_destroy_proxy(gp, oldpp);

  if (error) {
   if (force) {
    G_SCHED_DEBUG(0, "Unrecoverable error while "
        "destroying a proxy geom, leaking some "
        " memory.");
   }

   return (error);
  }
 }

 mtx_destroy(&sc->sc_mtx);

 g_free(gp->softc);
 gp->softc = ((void*)0);
 g_wither_geom(gp, ENXIO);

 return (error);
}
