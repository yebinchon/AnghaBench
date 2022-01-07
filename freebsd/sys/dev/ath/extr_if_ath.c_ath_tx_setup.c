
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_ac; } ;
struct ath_softc {struct ath_txq** sc_ac2q; int sc_dev; } ;


 int HAL_TX_QUEUE_DATA ;
 struct ath_txq* ath_txq_setup (struct ath_softc*,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 int nitems (struct ath_txq**) ;

__attribute__((used)) static int
ath_tx_setup(struct ath_softc *sc, int ac, int haltype)
{
 struct ath_txq *txq;

 if (ac >= nitems(sc->sc_ac2q)) {
  device_printf(sc->sc_dev, "AC %u out of range, max %zu!\n",
   ac, nitems(sc->sc_ac2q));
  return 0;
 }
 txq = ath_txq_setup(sc, HAL_TX_QUEUE_DATA, haltype);
 if (txq != ((void*)0)) {
  txq->axq_ac = ac;
  sc->sc_ac2q[ac] = txq;
  return 1;
 } else
  return 0;
}
