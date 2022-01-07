
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_txq {int dummy; } ;
struct malo_softc {int dummy; } ;


 int MALO_TXQ_LOCK_DESTROY (struct malo_txq*) ;

__attribute__((used)) static void
malo_tx_cleanupq(struct malo_softc *sc, struct malo_txq *txq)
{

 MALO_TXQ_LOCK_DESTROY(txq);
}
