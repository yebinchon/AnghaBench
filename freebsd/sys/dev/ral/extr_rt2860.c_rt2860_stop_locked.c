
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int sc_flags; int rxq; int * txq; scalar_t__ qfullmsk; scalar_t__ sc_tx_timer; int watchdog_ch; } ;


 int RAL_BARRIER_WRITE (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_BBP_HRST ;
 int RT2860_INT_MASK ;
 int RT2860_MAC_RX_EN ;
 int RT2860_MAC_SRST ;
 int RT2860_MAC_SYS_CTRL ;
 int RT2860_MAC_TX_EN ;
 int RT2860_RUNNING ;
 int callout_stop (int *) ;
 int rt2860_reset_rx_ring (struct rt2860_softc*,int *) ;
 int rt2860_reset_tx_ring (struct rt2860_softc*,int *) ;
 int rt2860_set_gp_timer (struct rt2860_softc*,int ) ;
 int rt2860_set_leds (struct rt2860_softc*,int ) ;

__attribute__((used)) static void
rt2860_stop_locked(struct rt2860_softc *sc)
{
 uint32_t tmp;
 int qid;

 if (sc->sc_flags & RT2860_RUNNING)
  rt2860_set_leds(sc, 0);

 callout_stop(&sc->watchdog_ch);
 sc->sc_tx_timer = 0;
 sc->sc_flags &= ~RT2860_RUNNING;


 RAL_WRITE(sc, RT2860_INT_MASK, 0);


 rt2860_set_gp_timer(sc, 0);


 tmp = RAL_READ(sc, RT2860_MAC_SYS_CTRL);
 tmp &= ~(RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
 RAL_WRITE(sc, RT2860_MAC_SYS_CTRL, tmp);


 RAL_WRITE(sc, RT2860_MAC_SYS_CTRL, RT2860_BBP_HRST | RT2860_MAC_SRST);
 RAL_BARRIER_WRITE(sc);
 RAL_WRITE(sc, RT2860_MAC_SYS_CTRL, 0);


 sc->qfullmsk = 0;
 for (qid = 0; qid < 6; qid++)
  rt2860_reset_tx_ring(sc, &sc->txq[qid]);
 rt2860_reset_rx_ring(sc, &sc->rxq);
}
