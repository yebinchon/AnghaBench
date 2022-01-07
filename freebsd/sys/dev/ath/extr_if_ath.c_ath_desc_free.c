
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dd_desc_len; } ;
struct ath_softc {int sc_txbuf_mgmt; TYPE_1__ sc_txdma_mgmt; int sc_txbuf; TYPE_1__ sc_txdma; int sc_bbuf; TYPE_1__ sc_bdma; } ;


 int ath_descdma_cleanup (struct ath_softc*,TYPE_1__*,int *) ;

__attribute__((used)) static void
ath_desc_free(struct ath_softc *sc)
{

 if (sc->sc_bdma.dd_desc_len != 0)
  ath_descdma_cleanup(sc, &sc->sc_bdma, &sc->sc_bbuf);
 if (sc->sc_txdma.dd_desc_len != 0)
  ath_descdma_cleanup(sc, &sc->sc_txdma, &sc->sc_txbuf);
 if (sc->sc_txdma_mgmt.dd_desc_len != 0)
  ath_descdma_cleanup(sc, &sc->sc_txdma_mgmt,
      &sc->sc_txbuf_mgmt);
}
