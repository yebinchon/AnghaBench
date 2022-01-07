
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msk_softc {int msk_pflags; int msk_intrmask; int msk_dev; struct msk_if_softc** msk_if; } ;
struct msk_if_softc {struct ifnet* msk_ifp; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int B0_IMSK ;
 int B0_Y2_SP_ICR ;
 int B0_Y2_SP_ISRC2 ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MSK_FLAG_SUSPEND ;
 int MSK_LOCK (struct msk_softc*) ;
 size_t MSK_PORT_A ;
 size_t MSK_PORT_B ;
 int MSK_UNLOCK (struct msk_softc*) ;
 int SC_STAT_CLR_IRQ ;
 int STAT_CTRL ;
 int Y2_IS_CHK_RX1 ;
 int Y2_IS_CHK_RX2 ;
 int Y2_IS_CHK_TXA1 ;
 int Y2_IS_CHK_TXA2 ;
 int Y2_IS_HW_ERR ;
 int Y2_IS_IRQ_MAC1 ;
 int Y2_IS_IRQ_MAC2 ;
 int Y2_IS_IRQ_PHY1 ;
 int Y2_IS_IRQ_PHY2 ;
 int Y2_IS_STAT_BMU ;
 int device_printf (int ,char*) ;
 int msk_handle_events (struct msk_softc*) ;
 int msk_intr_gmac (struct msk_if_softc*) ;
 int msk_intr_hwerr (struct msk_softc*) ;
 int msk_intr_phy (struct msk_if_softc*) ;
 int msk_start_locked (struct ifnet*) ;

__attribute__((used)) static void
msk_intr(void *xsc)
{
 struct msk_softc *sc;
 struct msk_if_softc *sc_if0, *sc_if1;
 struct ifnet *ifp0, *ifp1;
 uint32_t status;
 int domore;

 sc = xsc;
 MSK_LOCK(sc);


 status = CSR_READ_4(sc, B0_Y2_SP_ISRC2);
 if (status == 0 || status == 0xffffffff ||
     (sc->msk_pflags & MSK_FLAG_SUSPEND) != 0 ||
     (status & sc->msk_intrmask) == 0) {
  CSR_WRITE_4(sc, B0_Y2_SP_ICR, 2);
  MSK_UNLOCK(sc);
  return;
 }

 sc_if0 = sc->msk_if[MSK_PORT_A];
 sc_if1 = sc->msk_if[MSK_PORT_B];
 ifp0 = ifp1 = ((void*)0);
 if (sc_if0 != ((void*)0))
  ifp0 = sc_if0->msk_ifp;
 if (sc_if1 != ((void*)0))
  ifp1 = sc_if1->msk_ifp;

 if ((status & Y2_IS_IRQ_PHY1) != 0 && sc_if0 != ((void*)0))
  msk_intr_phy(sc_if0);
 if ((status & Y2_IS_IRQ_PHY2) != 0 && sc_if1 != ((void*)0))
  msk_intr_phy(sc_if1);
 if ((status & Y2_IS_IRQ_MAC1) != 0 && sc_if0 != ((void*)0))
  msk_intr_gmac(sc_if0);
 if ((status & Y2_IS_IRQ_MAC2) != 0 && sc_if1 != ((void*)0))
  msk_intr_gmac(sc_if1);
 if ((status & (Y2_IS_CHK_RX1 | Y2_IS_CHK_RX2)) != 0) {
  device_printf(sc->msk_dev, "Rx descriptor error\n");
  sc->msk_intrmask &= ~(Y2_IS_CHK_RX1 | Y2_IS_CHK_RX2);
  CSR_WRITE_4(sc, B0_IMSK, sc->msk_intrmask);
  CSR_READ_4(sc, B0_IMSK);
 }
        if ((status & (Y2_IS_CHK_TXA1 | Y2_IS_CHK_TXA2)) != 0) {
  device_printf(sc->msk_dev, "Tx descriptor error\n");
  sc->msk_intrmask &= ~(Y2_IS_CHK_TXA1 | Y2_IS_CHK_TXA2);
  CSR_WRITE_4(sc, B0_IMSK, sc->msk_intrmask);
  CSR_READ_4(sc, B0_IMSK);
 }
 if ((status & Y2_IS_HW_ERR) != 0)
  msk_intr_hwerr(sc);

 domore = msk_handle_events(sc);
 if ((status & Y2_IS_STAT_BMU) != 0 && domore == 0)
  CSR_WRITE_4(sc, STAT_CTRL, SC_STAT_CLR_IRQ);


 CSR_WRITE_4(sc, B0_Y2_SP_ICR, 2);

 if (ifp0 != ((void*)0) && (ifp0->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
     !IFQ_DRV_IS_EMPTY(&ifp0->if_snd))
  msk_start_locked(ifp0);
 if (ifp1 != ((void*)0) && (ifp1->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
     !IFQ_DRV_IS_EMPTY(&ifp1->if_snd))
  msk_start_locked(ifp1);

 MSK_UNLOCK(sc);
}
