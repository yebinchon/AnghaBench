
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_txbuf_mgmt; int sc_txdma_mgmt; int sc_txbuf; int sc_txdma; int sc_tx_desclen; int sc_bbuf; int sc_bdma; int sc_txbuf_cnt; } ;


 int ATH_BCBUF ;
 int ATH_MAX_SCATTER ;
 int ATH_TXDESC ;
 int ath_descdma_cleanup (struct ath_softc*,int *,int *) ;
 int ath_descdma_setup (struct ath_softc*,int *,int *,char*,int ,int ,int) ;
 int ath_txbuf ;
 int ath_txbuf_mgmt ;

__attribute__((used)) static int
ath_desc_alloc(struct ath_softc *sc)
{
 int error;

 error = ath_descdma_setup(sc, &sc->sc_txdma, &sc->sc_txbuf,
      "tx", sc->sc_tx_desclen, ath_txbuf, ATH_MAX_SCATTER);
 if (error != 0) {
  return error;
 }
 sc->sc_txbuf_cnt = ath_txbuf;

 error = ath_descdma_setup(sc, &sc->sc_txdma_mgmt, &sc->sc_txbuf_mgmt,
      "tx_mgmt", sc->sc_tx_desclen, ath_txbuf_mgmt,
      ATH_TXDESC);
 if (error != 0) {
  ath_descdma_cleanup(sc, &sc->sc_txdma, &sc->sc_txbuf);
  return error;
 }






 error = ath_descdma_setup(sc, &sc->sc_bdma, &sc->sc_bbuf,
   "beacon", sc->sc_tx_desclen, ATH_BCBUF, 1);
 if (error != 0) {
  ath_descdma_cleanup(sc, &sc->sc_txdma, &sc->sc_txbuf);
  ath_descdma_cleanup(sc, &sc->sc_txdma_mgmt,
      &sc->sc_txbuf_mgmt);
  return error;
 }
 return 0;
}
