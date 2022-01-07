
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {scalar_t__ sc_tx_timer; int * sc_txq; } ;


 int MWL_NUM_TX_QUEUES ;
 int mwl_tx_draintxq (struct mwl_softc*,int *) ;

__attribute__((used)) static void
mwl_draintxq(struct mwl_softc *sc)
{
 int i;

 for (i = 0; i < MWL_NUM_TX_QUEUES; i++)
  mwl_tx_draintxq(sc, &sc->sc_txq[i]);
 sc->sc_tx_timer = 0;
}
