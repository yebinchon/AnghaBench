
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {int ste_int_rx_act; scalar_t__ ste_int_rx_mod; struct ifnet* ste_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int STE_COUNTDOWN ;
 int STE_IMR ;
 int STE_IMR_RX_DMADONE ;
 int STE_INTRS ;
 int STE_ISR_ACK ;
 int STE_ISR_HOSTERR ;
 int STE_ISR_RX_DMADONE ;
 int STE_ISR_SOFTINTR ;
 int STE_ISR_STATS_OFLOW ;
 int STE_ISR_TX_DMADONE ;
 int STE_ISR_TX_DONE ;
 int STE_LOCK (struct ste_softc*) ;
 int STE_TIMER_USECS (scalar_t__) ;
 int STE_UNLOCK (struct ste_softc*) ;
 int ste_init_locked (struct ste_softc*) ;
 int ste_rxeof (struct ste_softc*,int) ;
 int ste_start_locked (struct ifnet*) ;
 int ste_stats_update (struct ste_softc*) ;
 int ste_txeoc (struct ste_softc*) ;
 int ste_txeof (struct ste_softc*) ;

__attribute__((used)) static void
ste_intr(void *xsc)
{
 struct ste_softc *sc;
 struct ifnet *ifp;
 uint16_t intrs, status;

 sc = xsc;
 STE_LOCK(sc);
 ifp = sc->ste_ifp;
 status = CSR_READ_2(sc, STE_ISR_ACK);
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  STE_UNLOCK(sc);
  return;
 }

 intrs = STE_INTRS;
 if (status == 0xFFFF || (status & intrs) == 0)
  goto done;

 if (sc->ste_int_rx_act > 0) {
  status &= ~STE_ISR_RX_DMADONE;
  intrs &= ~STE_IMR_RX_DMADONE;
 }

 if ((status & (STE_ISR_SOFTINTR | STE_ISR_RX_DMADONE)) != 0) {
  ste_rxeof(sc, -1);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
      (sc->ste_int_rx_mod != 0)) {
   if ((status & STE_ISR_RX_DMADONE) != 0) {
    CSR_WRITE_2(sc, STE_COUNTDOWN,
        STE_TIMER_USECS(sc->ste_int_rx_mod));
    intrs &= ~STE_IMR_RX_DMADONE;
    sc->ste_int_rx_act = 1;
   } else {
    intrs |= STE_IMR_RX_DMADONE;
    sc->ste_int_rx_act = 0;
   }
  }
 }
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  if ((status & STE_ISR_TX_DMADONE) != 0)
   ste_txeof(sc);
  if ((status & STE_ISR_TX_DONE) != 0)
   ste_txeoc(sc);
  if ((status & STE_ISR_STATS_OFLOW) != 0)
   ste_stats_update(sc);
  if ((status & STE_ISR_HOSTERR) != 0) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   ste_init_locked(sc);
   STE_UNLOCK(sc);
   return;
  }
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   ste_start_locked(ifp);
done:

  CSR_WRITE_2(sc, STE_IMR, intrs);
 }
 STE_UNLOCK(sc);
}
