
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2661_softc {int sc_flags; int rxq; int mgtq; int * txq; scalar_t__ sc_tx_timer; int watchdog_ch; int sc_mtx; } ;


 int volatile RAL_INPUT_RUNNING ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_RUNNING ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_DISABLE_RX ;
 int RT2661_INT_MASK_CSR ;
 int RT2661_INT_SOURCE_CSR ;
 int RT2661_MAC_CSR1 ;
 int RT2661_MCU_INT_MASK_CSR ;
 int RT2661_MCU_INT_SOURCE_CSR ;
 int RT2661_TXRX_CSR0 ;
 int RT2661_TX_CNTL_CSR ;
 int callout_stop (int *) ;
 int hz ;
 int msleep (struct rt2661_softc*,int *,int ,char*,int) ;
 int rt2661_reset_rx_ring (struct rt2661_softc*,int *) ;
 int rt2661_reset_tx_ring (struct rt2661_softc*,int *) ;

void
rt2661_stop_locked(struct rt2661_softc *sc)
{
 volatile int *flags = &sc->sc_flags;
 uint32_t tmp;

 while (*flags & RAL_INPUT_RUNNING)
  msleep(sc, &sc->sc_mtx, 0, "ralrunning", hz/10);

 callout_stop(&sc->watchdog_ch);
 sc->sc_tx_timer = 0;

 if (sc->sc_flags & RAL_RUNNING) {
  sc->sc_flags &= ~RAL_RUNNING;


  RAL_WRITE(sc, RT2661_TX_CNTL_CSR, 0x1f << 16);


  tmp = RAL_READ(sc, RT2661_TXRX_CSR0);
  RAL_WRITE(sc, RT2661_TXRX_CSR0, tmp | RT2661_DISABLE_RX);


  RAL_WRITE(sc, RT2661_MAC_CSR1, 3);
  RAL_WRITE(sc, RT2661_MAC_CSR1, 0);


  RAL_WRITE(sc, RT2661_INT_MASK_CSR, 0xffffffff);
  RAL_WRITE(sc, RT2661_MCU_INT_MASK_CSR, 0xffffffff);


  RAL_WRITE(sc, RT2661_INT_SOURCE_CSR, 0xffffffff);
  RAL_WRITE(sc, RT2661_MCU_INT_SOURCE_CSR, 0xffffffff);


  rt2661_reset_tx_ring(sc, &sc->txq[0]);
  rt2661_reset_tx_ring(sc, &sc->txq[1]);
  rt2661_reset_tx_ring(sc, &sc->txq[2]);
  rt2661_reset_tx_ring(sc, &sc->txq[3]);
  rt2661_reset_tx_ring(sc, &sc->mgtq);
  rt2661_reset_rx_ring(sc, &sc->rxq);
 }
}
