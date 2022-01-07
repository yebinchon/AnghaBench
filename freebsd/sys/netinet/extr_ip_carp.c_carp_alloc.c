
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct carp_if* if_carp; } ;
struct ifaddr {int dummy; } ;
struct carp_softc {int sc_vhid; int sc_init_counter; int sc_ifasiz; int sc_mtx; int sc_ad_tmo; int sc_md6_tmo; int sc_md_tmo; struct ifnet* sc_carpdev; void* sc_ifas; int sc_state; int sc_advbase; } ;
struct carp_if {int cif_vrs; } ;


 int CALLOUT_RETURNUNLOCKED ;
 int CARP_DFLTINTV ;
 int CARP_LOCK_INIT (struct carp_softc*) ;
 int CIF_LOCK (struct carp_if*) ;
 int CIF_UNLOCK (struct carp_if*) ;
 int INIT ;
 int LIST_INSERT_HEAD (int *,struct carp_softc*,int ) ;
 int M_CARP ;
 int M_WAITOK ;
 int M_ZERO ;
 int SA_XLOCKED ;
 int TAILQ_INSERT_TAIL (int *,struct carp_softc*,int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct carp_if* carp_alloc_if (struct ifnet*) ;
 int carp_list ;
 int carp_mtx ;
 int carp_sx ;
 void* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sc_list ;
 int sc_next ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static struct carp_softc*
carp_alloc(struct ifnet *ifp)
{
 struct carp_softc *sc;
 struct carp_if *cif;

 sx_assert(&carp_sx, SA_XLOCKED);

 if ((cif = ifp->if_carp) == ((void*)0))
  cif = carp_alloc_if(ifp);

 sc = malloc(sizeof(*sc), M_CARP, M_WAITOK|M_ZERO);

 sc->sc_advbase = CARP_DFLTINTV;
 sc->sc_vhid = -1;
 sc->sc_init_counter = 1;
 sc->sc_state = INIT;

 sc->sc_ifasiz = sizeof(struct ifaddr *);
 sc->sc_ifas = malloc(sc->sc_ifasiz, M_CARP, M_WAITOK|M_ZERO);
 sc->sc_carpdev = ifp;

 CARP_LOCK_INIT(sc);






 callout_init_mtx(&sc->sc_ad_tmo, &sc->sc_mtx, CALLOUT_RETURNUNLOCKED);

 CIF_LOCK(cif);
 TAILQ_INSERT_TAIL(&cif->cif_vrs, sc, sc_list);
 CIF_UNLOCK(cif);

 mtx_lock(&carp_mtx);
 LIST_INSERT_HEAD(&carp_list, sc, sc_next);
 mtx_unlock(&carp_mtx);

 return (sc);
}
