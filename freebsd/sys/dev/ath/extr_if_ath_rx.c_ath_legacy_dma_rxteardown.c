
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dd_desc_len; } ;
struct ath_softc {int sc_rxbuf; TYPE_1__ sc_rxdma; } ;


 int ath_descdma_cleanup (struct ath_softc*,TYPE_1__*,int *) ;

__attribute__((used)) static int
ath_legacy_dma_rxteardown(struct ath_softc *sc)
{

 if (sc->sc_rxdma.dd_desc_len != 0)
  ath_descdma_cleanup(sc, &sc->sc_rxdma, &sc->sc_rxbuf);
 return (0);
}
