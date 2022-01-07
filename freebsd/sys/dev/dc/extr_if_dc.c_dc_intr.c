
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;
struct TYPE_2__ {scalar_t__ dc_tx_cnt; } ;
struct dc_softc {TYPE_1__ dc_cdata; struct ifnet* dc_ifp; scalar_t__ suspended; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_FRAMESDISCARDED ;
 int DC_IMR ;
 int DC_INTRS ;
 int DC_ISR ;
 int DC_ISR_BUS_ERR ;
 int DC_ISR_RX_NOBUF ;
 int DC_ISR_RX_OK ;
 int DC_ISR_RX_WATDOGTIMEO ;
 int DC_ISR_TX_IDLE ;
 int DC_ISR_TX_NOBUF ;
 int DC_ISR_TX_OK ;
 int DC_ISR_TX_UNDERRUN ;
 int DC_LOCK (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_TX_ON ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_TXSTART ;
 int DC_UNLOCK (struct dc_softc*) ;
 int IFCAP_POLLING ;
 int IFCOUNTER_IERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int dc_init_locked (struct dc_softc*) ;
 scalar_t__ dc_rx_resync (struct dc_softc*) ;
 scalar_t__ dc_rxeof (struct dc_softc*) ;
 int dc_start_locked (struct ifnet*) ;
 int dc_tx_underrun (struct dc_softc*) ;
 int dc_txeof (struct dc_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
dc_intr(void *arg)
{
 struct dc_softc *sc;
 struct ifnet *ifp;
 uint32_t r, status;
 int n;

 sc = arg;

 if (sc->suspended)
  return;

 DC_LOCK(sc);
 status = CSR_READ_4(sc, DC_ISR);
 if (status == 0xFFFFFFFF || (status & DC_INTRS) == 0) {
  DC_UNLOCK(sc);
  return;
 }
 ifp = sc->dc_ifp;







 CSR_WRITE_4(sc, DC_IMR, 0x00000000);

 for (n = 16; n > 0; n--) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;

  CSR_WRITE_4(sc, DC_ISR, status);

  if (status & DC_ISR_RX_OK) {
   if (dc_rxeof(sc) == 0) {
    while (dc_rx_resync(sc))
     dc_rxeof(sc);
   }
  }

  if (status & (DC_ISR_TX_OK | DC_ISR_TX_NOBUF))
   dc_txeof(sc);

  if (status & DC_ISR_TX_IDLE) {
   dc_txeof(sc);
   if (sc->dc_cdata.dc_tx_cnt) {
    DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_TX_ON);
    CSR_WRITE_4(sc, DC_TXSTART, 0xFFFFFFFF);
   }
  }

  if (status & DC_ISR_TX_UNDERRUN)
   dc_tx_underrun(sc);

  if ((status & DC_ISR_RX_WATDOGTIMEO)
      || (status & DC_ISR_RX_NOBUF)) {
   r = CSR_READ_4(sc, DC_FRAMESDISCARDED);
   if_inc_counter(ifp, IFCOUNTER_IERRORS, (r & 0xffff) + ((r >> 17) & 0x7ff));
   if (dc_rxeof(sc) == 0) {
    while (dc_rx_resync(sc))
     dc_rxeof(sc);
   }
  }

  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   dc_start_locked(ifp);

  if (status & DC_ISR_BUS_ERR) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   dc_init_locked(sc);
   DC_UNLOCK(sc);
   return;
  }
  status = CSR_READ_4(sc, DC_ISR);
  if (status == 0xFFFFFFFF || (status & DC_INTRS) == 0)
   break;
 }


 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  CSR_WRITE_4(sc, DC_IMR, DC_INTRS);

 DC_UNLOCK(sc);
}
