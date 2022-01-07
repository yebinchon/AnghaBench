
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {int rl_int_rx_act; scalar_t__ rl_int_rx_mod; int rl_flags; int rl_txstart; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_2 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int ) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int RL_FLAG_PCIE ;
 int RL_IMR ;
 int RL_INTRS_CPLUS ;
 int RL_ISR ;
 int RL_ISR_FIFO_OFLOW ;
 int RL_ISR_RX_ERR ;
 int RL_ISR_RX_OK ;
 int RL_ISR_RX_OVERRUN ;
 int RL_ISR_SYSTEM_ERR ;
 int RL_ISR_TIMEOUT_EXPIRED ;
 int RL_ISR_TX_DESC_UNAVAIL ;
 int RL_ISR_TX_ERR ;
 int RL_ISR_TX_OK ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_TIMERCNT ;
 int RL_TXSTART_START ;
 int RL_UNLOCK (struct rl_softc*) ;
 int re_init_locked (struct rl_softc*) ;
 int re_rxeof (struct rl_softc*,int *) ;
 int re_start_locked (struct ifnet*) ;
 int re_txeof (struct rl_softc*) ;

__attribute__((used)) static void
re_intr_msi(void *xsc)
{
 struct rl_softc *sc;
 struct ifnet *ifp;
 uint16_t intrs, status;

 sc = xsc;
 RL_LOCK(sc);

 ifp = sc->rl_ifp;







 CSR_WRITE_2(sc, RL_IMR, 0);
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  RL_UNLOCK(sc);
  return;
 }

 intrs = RL_INTRS_CPLUS;
 status = CSR_READ_2(sc, RL_ISR);
        CSR_WRITE_2(sc, RL_ISR, status);
 if (sc->rl_int_rx_act > 0) {
  intrs &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR | RL_ISR_FIFO_OFLOW |
      RL_ISR_RX_OVERRUN);
  status &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR | RL_ISR_FIFO_OFLOW |
      RL_ISR_RX_OVERRUN);
 }

 if (status & (RL_ISR_TIMEOUT_EXPIRED | RL_ISR_RX_OK | RL_ISR_RX_ERR |
     RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN)) {
  re_rxeof(sc, ((void*)0));
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
   if (sc->rl_int_rx_mod != 0 &&
       (status & (RL_ISR_RX_OK | RL_ISR_RX_ERR |
       RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN)) != 0) {

    CSR_WRITE_4(sc, RL_TIMERCNT, 1);
    intrs &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR |
        RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN);
    sc->rl_int_rx_act = 1;
   } else {
    intrs |= RL_ISR_RX_OK | RL_ISR_RX_ERR |
        RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN;
    sc->rl_int_rx_act = 0;
   }
  }
 }
 if ((status & (RL_ISR_TX_OK | RL_ISR_TX_DESC_UNAVAIL)) &&
     (sc->rl_flags & RL_FLAG_PCIE))
  CSR_WRITE_1(sc, sc->rl_txstart, RL_TXSTART_START);
 if (status & (RL_ISR_TX_OK | RL_ISR_TX_ERR | RL_ISR_TX_DESC_UNAVAIL))
  re_txeof(sc);

 if (status & RL_ISR_SYSTEM_ERR) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  re_init_locked(sc);
 }

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   re_start_locked(ifp);
  CSR_WRITE_2(sc, RL_IMR, intrs);
 }
 RL_UNLOCK(sc);
}
