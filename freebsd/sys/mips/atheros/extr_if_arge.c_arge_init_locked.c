
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct arge_softc {int arge_link_status; int arge_stat_callout; scalar_t__ arge_miibus; int arge_dev; struct ifnet* arge_ifp; } ;


 int AR71XX_DMA_INTR ;
 int AR71XX_DMA_RX_CONTROL ;
 int AR71XX_DMA_RX_DESC ;
 int AR71XX_DMA_TX_DESC ;
 int ARGE_LOCK_ASSERT (struct arge_softc*) ;
 int ARGE_RX_RING_ADDR (struct arge_softc*,int ) ;
 int ARGE_TX_RING_ADDR (struct arge_softc*,int ) ;
 int ARGE_WRITE (struct arge_softc*,int ,int ) ;
 int DMA_INTR_ALL ;
 int DMA_RX_CONTROL_EN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int arge_reset_dma (struct arge_softc*) ;
 scalar_t__ arge_rx_ring_init (struct arge_softc*) ;
 int arge_stop (struct arge_softc*) ;
 int arge_tick ;
 int arge_tx_ring_init (struct arge_softc*) ;
 int arge_update_link_locked (struct arge_softc*) ;
 int callout_reset (int *,int ,int ,struct arge_softc*) ;
 struct mii_data* device_get_softc (scalar_t__) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
arge_init_locked(struct arge_softc *sc)
{
 struct ifnet *ifp = sc->arge_ifp;
 struct mii_data *mii;

 ARGE_LOCK_ASSERT(sc);

 if ((ifp->if_flags & IFF_UP) && (ifp->if_drv_flags & IFF_DRV_RUNNING))
  return;


 if (arge_rx_ring_init(sc) != 0) {
  device_printf(sc->arge_dev,
      "initialization failed: no memory for rx buffers\n");
  arge_stop(sc);
  return;
 }


 arge_tx_ring_init(sc);

 arge_reset_dma(sc);

 if (sc->arge_miibus) {
  mii = device_get_softc(sc->arge_miibus);
  mii_mediachg(mii);
 }
 else {



  sc->arge_link_status = 1;
 }

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 if (sc->arge_miibus) {
  callout_reset(&sc->arge_stat_callout, hz, arge_tick, sc);
  arge_update_link_locked(sc);
 }

 ARGE_WRITE(sc, AR71XX_DMA_TX_DESC, ARGE_TX_RING_ADDR(sc, 0));
 ARGE_WRITE(sc, AR71XX_DMA_RX_DESC, ARGE_RX_RING_ADDR(sc, 0));


 ARGE_WRITE(sc, AR71XX_DMA_RX_CONTROL, DMA_RX_CONTROL_EN);


 ARGE_WRITE(sc, AR71XX_DMA_INTR, DMA_INTR_ALL);
}
