
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_rxbuf; int sc_dmat; } ;
struct ath_buf {int * bf_m; int bf_dmamap; } ;


 int ATH_RX_LOCK_ASSERT (struct ath_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct ath_buf*,int ) ;
 int bf_list ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ath_edma_rxbuf_free(struct ath_softc *sc, struct ath_buf *bf)
{

 ATH_RX_LOCK_ASSERT(sc);





 if (bf->bf_m) {
  bus_dmamap_unload(sc->sc_dmat, bf->bf_dmamap);
  m_freem(bf->bf_m);
  bf->bf_m = ((void*)0);
 }


 TAILQ_INSERT_TAIL(&sc->sc_rxbuf, bf, bf_list);
}
