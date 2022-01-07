
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct carp_if* if_carp; } ;
struct carp_softc {struct carp_softc* sc_ifas; int sc_md6_tmo; int sc_md_tmo; int sc_ad_tmo; scalar_t__ sc_suppress; struct ifnet* sc_carpdev; } ;
struct carp_if {int cif_vrs; } ;


 int CARP_LOCK_DESTROY (struct carp_softc*) ;
 int CARP_UNLOCK (struct carp_softc*) ;
 int CIF_LOCK (struct carp_if*) ;
 int CIF_UNLOCK (struct carp_if*) ;
 int LIST_REMOVE (struct carp_softc*,int ) ;
 int M_CARP ;
 int SA_XLOCKED ;
 int TAILQ_REMOVE (int *,struct carp_softc*,int ) ;
 int V_carp_ifdown_adj ;
 int callout_drain (int *) ;
 int carp_demote_adj (int ,char*) ;
 int carp_mtx ;
 int carp_sx ;
 int free (struct carp_softc*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sc_list ;
 int sc_next ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
carp_destroy(struct carp_softc *sc)
{
 struct ifnet *ifp = sc->sc_carpdev;
 struct carp_if *cif = ifp->if_carp;

 sx_assert(&carp_sx, SA_XLOCKED);

 if (sc->sc_suppress)
  carp_demote_adj(-V_carp_ifdown_adj, "vhid removed");
 CARP_UNLOCK(sc);

 CIF_LOCK(cif);
 TAILQ_REMOVE(&cif->cif_vrs, sc, sc_list);
 CIF_UNLOCK(cif);

 mtx_lock(&carp_mtx);
 LIST_REMOVE(sc, sc_next);
 mtx_unlock(&carp_mtx);

 callout_drain(&sc->sc_ad_tmo);






 CARP_LOCK_DESTROY(sc);

 free(sc->sc_ifas, M_CARP);
 free(sc, M_CARP);
}
