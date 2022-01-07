
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_softc {int sc_data_dtag; int sc_free_sdesc; int sc_free_tdesc; } ;
struct cesa_request {scalar_t__ cr_dmap_loaded; int cr_dmap; int cr_sdesc; int cr_tdesc; } ;


 int CESA_GENERIC_FREE_LOCKED (struct cesa_softc*,struct cesa_request*,int ) ;
 int CESA_LOCK (struct cesa_softc*,int ) ;
 int CESA_UNLOCK (struct cesa_softc*,int ) ;
 int STAILQ_CONCAT (int *,int *) ;
 int bus_dmamap_unload (int ,int ) ;
 int requests ;
 int sdesc ;
 int tdesc ;

__attribute__((used)) static void
cesa_free_request(struct cesa_softc *sc, struct cesa_request *cr)
{


 CESA_LOCK(sc, tdesc);
 STAILQ_CONCAT(&sc->sc_free_tdesc, &cr->cr_tdesc);
 CESA_UNLOCK(sc, tdesc);


 CESA_LOCK(sc, sdesc);
 STAILQ_CONCAT(&sc->sc_free_sdesc, &cr->cr_sdesc);
 CESA_UNLOCK(sc, sdesc);


 if (cr->cr_dmap_loaded) {
  bus_dmamap_unload(sc->sc_data_dtag, cr->cr_dmap);
  cr->cr_dmap_loaded = 0;
 }

 CESA_GENERIC_FREE_LOCKED(sc, cr, requests);
}
