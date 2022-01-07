
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct run_softc {int sc_flags; int * sc_epq; int sc_dev; int * rx_m; int * sc_xfer; int cmdq_key_set; int cmdq_run; int ratectl_run; } ;


 int MA_OWNED ;
 int RT2860_BBP_HRST ;
 int RT2860_MAC_RX_EN ;
 int RT2860_MAC_SRST ;
 int RT2860_MAC_SYS_CTRL ;
 int RT2860_MAC_TX_EN ;
 int RT2860_RX_DMA_BUSY ;
 int RT2860_RX_DMA_EN ;
 int RT2860_TX2Q_PCNT_MASK ;
 int RT2860_TXRXQ_PCNT ;
 int RT2860_TX_DMA_BUSY ;
 int RT2860_TX_DMA_EN ;
 int RT2860_USB_DMA_CFG ;
 int RT2860_WPDMA_GLO_CFG ;
 int RUN_DEBUG_RESET ;
 int RUN_DEBUG_XMIT ;
 int RUN_DPRINTF (struct run_softc*,int,char*) ;
 int RUN_EP_QUEUES ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 int RUN_N_XFER ;
 int RUN_RATECTL_OFF ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 int device_printf (int ,char*) ;
 int m_free (int *) ;
 int run_delay (struct run_softc*,int) ;
 int run_drain_mbufq (struct run_softc*) ;
 scalar_t__ run_read (struct run_softc*,int ,int*) ;
 int run_set_leds (struct run_softc*,int ) ;
 int run_unsetup_tx_list (struct run_softc*,int *) ;
 int run_write (struct run_softc*,int ,int) ;
 int usbd_transfer_drain (int ) ;

__attribute__((used)) static void
run_stop(void *arg)
{
 struct run_softc *sc = (struct run_softc *)arg;
 uint32_t tmp;
 int i;
 int ntries;

 RUN_LOCK_ASSERT(sc, MA_OWNED);

 if (sc->sc_flags & RUN_RUNNING)
  run_set_leds(sc, 0);

 sc->sc_flags &= ~RUN_RUNNING;

 sc->ratectl_run = RUN_RATECTL_OFF;
 sc->cmdq_run = sc->cmdq_key_set;

 RUN_UNLOCK(sc);

 for(i = 0; i < RUN_N_XFER; i++)
  usbd_transfer_drain(sc->sc_xfer[i]);

 RUN_LOCK(sc);

 run_drain_mbufq(sc);

 if (sc->rx_m != ((void*)0)) {
  m_free(sc->rx_m);
  sc->rx_m = ((void*)0);
 }


 if (run_read(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
  return;
 tmp &= ~(RT2860_RX_DMA_EN | RT2860_TX_DMA_EN);
 run_write(sc, RT2860_WPDMA_GLO_CFG, tmp);

 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
   return;
  if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
    break;
  run_delay(sc, 10);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "timeout waiting for DMA engine\n");
  return;
 }


 run_read(sc, RT2860_MAC_SYS_CTRL, &tmp);
 tmp &= ~(RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
 run_write(sc, RT2860_MAC_SYS_CTRL, tmp);


 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_TXRXQ_PCNT, &tmp) != 0) {
   RUN_DPRINTF(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
       "Cannot read Tx queue count\n");
   break;
  }
  if ((tmp & RT2860_TX2Q_PCNT_MASK) == 0) {
   RUN_DPRINTF(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
       "All Tx cleared\n");
   break;
  }
  run_delay(sc, 10);
 }
 if (ntries >= 100)
  RUN_DPRINTF(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
      "There are still pending Tx\n");
 run_delay(sc, 10);
 run_write(sc, RT2860_USB_DMA_CFG, 0);

 run_write(sc, RT2860_MAC_SYS_CTRL, RT2860_BBP_HRST | RT2860_MAC_SRST);
 run_write(sc, RT2860_MAC_SYS_CTRL, 0);

 for (i = 0; i != RUN_EP_QUEUES; i++)
  run_unsetup_tx_list(sc, &sc->sc_epq[i]);
}
