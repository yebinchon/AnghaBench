
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_txq {int dummy; } ;
struct mwl_softc {int dummy; } ;


 int MWL_TXQ_LOCK_DESTROY (struct mwl_txq*) ;

__attribute__((used)) static void
mwl_tx_cleanupq(struct mwl_softc *sc, struct mwl_txq *txq)
{

 MWL_TXQ_LOCK_DESTROY(txq);
}
