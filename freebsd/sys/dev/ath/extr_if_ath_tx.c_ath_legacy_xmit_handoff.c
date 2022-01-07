
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {scalar_t__ axq_qnum; } ;
struct ath_softc {int sc_alq; } ;
struct ath_buf {int dummy; } ;


 int ATH_ALQ_EDMA_TXDESC ;
 scalar_t__ ATH_TXQ_SWQ ;
 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int ath_tx_alq_post (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_handoff_hw (struct ath_softc*,struct ath_txq*,struct ath_buf*) ;
 int ath_tx_handoff_mcast (struct ath_softc*,struct ath_txq*,struct ath_buf*) ;
 scalar_t__ if_ath_alq_checkdebug (int *,int ) ;

__attribute__((used)) static void
ath_legacy_xmit_handoff(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_buf *bf)
{
 ATH_TX_LOCK_ASSERT(sc);






 if (txq->axq_qnum == ATH_TXQ_SWQ)
  ath_tx_handoff_mcast(sc, txq, bf);
 else
  ath_tx_handoff_hw(sc, txq, bf);
}
