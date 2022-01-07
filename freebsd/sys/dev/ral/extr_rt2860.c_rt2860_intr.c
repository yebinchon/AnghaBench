
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int dummy; } ;


 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_INT_STATUS ;
 int RT2860_MAC_INT_0 ;
 int RT2860_MAC_INT_2 ;
 int RT2860_MAC_INT_3 ;
 int RT2860_MAC_INT_4 ;
 int RT2860_RX_DONE_INT ;
 int RT2860_TX_DONE_INT0 ;
 int RT2860_TX_DONE_INT1 ;
 int RT2860_TX_DONE_INT2 ;
 int RT2860_TX_DONE_INT3 ;
 int RT2860_TX_DONE_INT4 ;
 int RT2860_TX_DONE_INT5 ;
 int RT2860_TX_RX_COHERENT ;
 scalar_t__ __predict_false (int) ;
 int rt2860_drain_stats_fifo (struct rt2860_softc*) ;
 int rt2860_gp_intr (struct rt2860_softc*) ;
 int rt2860_intr_coherent (struct rt2860_softc*) ;
 int rt2860_rx_intr (struct rt2860_softc*) ;
 int rt2860_tbtt_intr (struct rt2860_softc*) ;
 int rt2860_tx_intr (struct rt2860_softc*,int) ;

void
rt2860_intr(void *arg)
{
 struct rt2860_softc *sc = arg;
 uint32_t r;

 RAL_LOCK(sc);

 r = RAL_READ(sc, RT2860_INT_STATUS);
 if (__predict_false(r == 0xffffffff)) {
  RAL_UNLOCK(sc);
  return;
 }
 if (r == 0) {
  RAL_UNLOCK(sc);
  return;
 }


 RAL_WRITE(sc, RT2860_INT_STATUS, r);

 if (r & RT2860_TX_RX_COHERENT)
  rt2860_intr_coherent(sc);

 if (r & RT2860_MAC_INT_2)
  rt2860_drain_stats_fifo(sc);

 if (r & RT2860_TX_DONE_INT5)
  rt2860_tx_intr(sc, 5);

 if (r & RT2860_RX_DONE_INT)
  rt2860_rx_intr(sc);

 if (r & RT2860_TX_DONE_INT4)
  rt2860_tx_intr(sc, 4);

 if (r & RT2860_TX_DONE_INT3)
  rt2860_tx_intr(sc, 3);

 if (r & RT2860_TX_DONE_INT2)
  rt2860_tx_intr(sc, 2);

 if (r & RT2860_TX_DONE_INT1)
  rt2860_tx_intr(sc, 1);

 if (r & RT2860_TX_DONE_INT0)
  rt2860_tx_intr(sc, 0);

 if (r & RT2860_MAC_INT_0)
  rt2860_tbtt_intr(sc);

 if (r & RT2860_MAC_INT_3)
                  ;

 if (r & RT2860_MAC_INT_4)
  rt2860_gp_intr(sc);

 RAL_UNLOCK(sc);
}
