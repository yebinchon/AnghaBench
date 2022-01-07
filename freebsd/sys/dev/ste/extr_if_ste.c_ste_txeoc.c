
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {scalar_t__ ste_tx_thresh; int ste_dev; struct ifnet* ste_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int STE_DMACTL ;
 int STE_DMACTL_TXDMA_STALL ;
 int STE_ERR_BITS ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 scalar_t__ STE_MIN_FRAMELEN ;
 scalar_t__ STE_PACKET_SIZE ;
 int STE_SETBIT4 (struct ste_softc*,int ,int ) ;
 int STE_TXSTATUS_EXCESSCOLLS ;
 int STE_TXSTATUS_RECLAIMERR ;
 int STE_TXSTATUS_STATSOFLOW ;
 int STE_TXSTATUS_TXDONE ;
 int STE_TXSTATUS_UNDERRUN ;
 int STE_TX_STATUS ;
 int device_printf (int ,char*,scalar_t__,...) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int ste_init_locked (struct ste_softc*) ;
 int ste_restart_tx (struct ste_softc*) ;
 int ste_wait (struct ste_softc*) ;

__attribute__((used)) static void
ste_txeoc(struct ste_softc *sc)
{
 uint16_t txstat;
 struct ifnet *ifp;

 STE_LOCK_ASSERT(sc);

 ifp = sc->ste_ifp;
 for (;;) {
  txstat = CSR_READ_2(sc, STE_TX_STATUS);
  if ((txstat & STE_TXSTATUS_TXDONE) == 0)
   break;
  if ((txstat & (STE_TXSTATUS_UNDERRUN |
      STE_TXSTATUS_EXCESSCOLLS | STE_TXSTATUS_RECLAIMERR |
      STE_TXSTATUS_STATSOFLOW)) != 0) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);




   if ((txstat & STE_TXSTATUS_UNDERRUN) != 0 &&
       sc->ste_tx_thresh < STE_PACKET_SIZE) {
    sc->ste_tx_thresh += STE_MIN_FRAMELEN;
    if (sc->ste_tx_thresh > STE_PACKET_SIZE)
     sc->ste_tx_thresh = STE_PACKET_SIZE;
    device_printf(sc->ste_dev,
        "TX underrun, increasing TX"
        " start threshold to %d bytes\n",
        sc->ste_tx_thresh);

    STE_SETBIT4(sc, STE_DMACTL,
        STE_DMACTL_TXDMA_STALL);
    ste_wait(sc);
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    ste_init_locked(sc);
    break;
   }

   ste_restart_tx(sc);
  }
  CSR_WRITE_2(sc, STE_TX_STATUS, txstat);
 }
}
