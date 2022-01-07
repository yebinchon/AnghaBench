
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_softc {int sc_flags; int rxq; int bcnq; int prioq; int atimq; int txq; scalar_t__ sc_tx_timer; int watchdog_ch; int sc_mtx; } ;


 int RAL_LOCK_ASSERT (struct rt2560_softc*) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_ABORT_TX ;
 int RT2560_CSR1 ;
 int RT2560_CSR8 ;
 int RT2560_DISABLE_RX ;
 int volatile RT2560_F_INPUT_RUNNING ;
 int RT2560_F_RUNNING ;
 int RT2560_RESET_ASIC ;
 int RT2560_RXCSR0 ;
 int RT2560_TXCSR0 ;
 int callout_stop (int *) ;
 int hz ;
 int msleep (struct rt2560_softc*,int *,int ,char*,int) ;
 int rt2560_reset_rx_ring (struct rt2560_softc*,int *) ;
 int rt2560_reset_tx_ring (struct rt2560_softc*,int *) ;

__attribute__((used)) static void
rt2560_stop_locked(struct rt2560_softc *sc)
{
 volatile int *flags = &sc->sc_flags;

 RAL_LOCK_ASSERT(sc);

 while (*flags & RT2560_F_INPUT_RUNNING)
  msleep(sc, &sc->sc_mtx, 0, "ralrunning", hz/10);

 callout_stop(&sc->watchdog_ch);
 sc->sc_tx_timer = 0;

 if (sc->sc_flags & RT2560_F_RUNNING) {
  sc->sc_flags &= ~RT2560_F_RUNNING;


  RAL_WRITE(sc, RT2560_TXCSR0, RT2560_ABORT_TX);


  RAL_WRITE(sc, RT2560_RXCSR0, RT2560_DISABLE_RX);


  RAL_WRITE(sc, RT2560_CSR1, RT2560_RESET_ASIC);
  RAL_WRITE(sc, RT2560_CSR1, 0);


  RAL_WRITE(sc, RT2560_CSR8, 0xffffffff);


  rt2560_reset_tx_ring(sc, &sc->txq);
  rt2560_reset_tx_ring(sc, &sc->atimq);
  rt2560_reset_tx_ring(sc, &sc->prioq);
  rt2560_reset_tx_ring(sc, &sc->bcnq);
  rt2560_reset_rx_ring(sc, &sc->rxq);
 }
}
