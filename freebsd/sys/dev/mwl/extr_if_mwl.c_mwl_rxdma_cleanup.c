
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dd_desc_len; int * dd_bufptr; } ;
struct mwl_softc {scalar_t__ sc_rxmem_paddr; TYPE_1__ sc_rxdma; int * sc_rxmem; int sc_rxmap; int sc_rxdmat; } ;


 int M_MWLDEV ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int free (int *,int ) ;
 int mwl_desc_cleanup (struct mwl_softc*,TYPE_1__*) ;

__attribute__((used)) static void
mwl_rxdma_cleanup(struct mwl_softc *sc)
{
 if (sc->sc_rxmem_paddr != 0) {
  bus_dmamap_unload(sc->sc_rxdmat, sc->sc_rxmap);
  sc->sc_rxmem_paddr = 0;
 }
 if (sc->sc_rxmem != ((void*)0)) {
  bus_dmamem_free(sc->sc_rxdmat, sc->sc_rxmem, sc->sc_rxmap);
  sc->sc_rxmem = ((void*)0);
 }
 if (sc->sc_rxdma.dd_bufptr != ((void*)0)) {
  free(sc->sc_rxdma.dd_bufptr, M_MWLDEV);
  sc->sc_rxdma.dd_bufptr = ((void*)0);
 }
 if (sc->sc_rxdma.dd_desc_len != 0)
  mwl_desc_cleanup(sc, &sc->sc_rxdma);
}
