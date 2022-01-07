
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct g_virstor_softc {size_t n_components; struct g_virstor_softc* components; struct g_virstor_softc* map; int delayed_bio_q_mtx; int delayed_bio_q; TYPE_1__* bio; struct g_provider* provider; struct g_geom* geom; int * gcons; } ;
struct g_virstor_bio_q {size_t n_components; struct g_virstor_bio_q* components; struct g_virstor_bio_q* map; int delayed_bio_q_mtx; int delayed_bio_q; TYPE_1__* bio; struct g_provider* provider; struct g_geom* geom; int * gcons; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_geom {int name; int provider; int * softc; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int bio_error; } ;


 int EBUSY ;
 int EIO ;
 int ENOSPC ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct g_provider* LIST_FIRST (int *) ;
 int LOG_MSG (int ,char*,int ) ;
 int LVL_DEBUG ;
 int LVL_ERROR ;
 int LVL_WARNING ;
 int M_GVIRSTOR ;
 int STAILQ_EMPTY (int *) ;
 struct g_virstor_softc* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bzero (struct g_virstor_softc*,int) ;
 int free (struct g_virstor_softc*,int ) ;
 int g_io_deliver (TYPE_1__*,int ) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int) ;
 int linkage ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int remove_component (struct g_virstor_softc*,struct g_virstor_softc*,scalar_t__) ;

__attribute__((used)) static int
virstor_geom_destroy(struct g_virstor_softc *sc, boolean_t force,
    boolean_t delay)
{
 struct g_provider *pp;
 struct g_geom *gp;
 u_int n;

 g_topology_assert();

 if (sc == ((void*)0))
  return (ENXIO);

 pp = sc->provider;
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  LOG_MSG(force ? LVL_WARNING : LVL_ERROR,
      "Device %s is still open.", pp->name);
  if (!force)
   return (EBUSY);
 }

 for (n = 0; n < sc->n_components; n++) {
  if (sc->components[n].gcons != ((void*)0))
   remove_component(sc, &sc->components[n], delay);
 }

 gp = sc->geom;
 gp->softc = ((void*)0);

 KASSERT(sc->provider == ((void*)0), ("Provider still exists for %s",
     gp->name));




 mtx_lock(&sc->delayed_bio_q_mtx);
 while (!STAILQ_EMPTY(&sc->delayed_bio_q)) {
  struct g_virstor_bio_q *bq;
  bq = STAILQ_FIRST(&sc->delayed_bio_q);
  bq->bio->bio_error = ENOSPC;
  g_io_deliver(bq->bio, EIO);
  STAILQ_REMOVE_HEAD(&sc->delayed_bio_q, linkage);
  free(bq, M_GVIRSTOR);
 }
 mtx_unlock(&sc->delayed_bio_q_mtx);
 mtx_destroy(&sc->delayed_bio_q_mtx);

 free(sc->map, M_GVIRSTOR);
 free(sc->components, M_GVIRSTOR);
 bzero(sc, sizeof *sc);
 free(sc, M_GVIRSTOR);

 pp = LIST_FIRST(&gp->provider);
 if (pp == ((void*)0) || (pp->acr == 0 && pp->acw == 0 && pp->ace == 0))
  LOG_MSG(LVL_DEBUG, "Device %s destroyed", gp->name);

 g_wither_geom(gp, ENXIO);

 return (0);
}
