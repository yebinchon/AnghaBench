
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_6__ {TYPE_2__* xl_tx_chain; } ;
struct TYPE_4__ {int xl_rx_dmaaddr; } ;
struct xl_softc {int xl_flags; scalar_t__ xl_type; int xl_tx_thresh; scalar_t__ xl_xcvr; int xl_tick_callout; scalar_t__ xl_wdog_timer; int xl_fhandle; int xl_ftag; TYPE_3__ xl_cdata; TYPE_1__ xl_ldata; int xl_dev; struct ifnet* xl_ifp; int * xl_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;
struct TYPE_5__ {int xl_phys; } ;


 int CSR_READ_1 (struct xl_softc*,scalar_t__) ;
 int CSR_READ_2 (struct xl_softc*,scalar_t__) ;
 int CSR_WRITE_1 (struct xl_softc*,scalar_t__,int) ;
 int CSR_WRITE_2 (struct xl_softc*,scalar_t__,int) ;
 int CSR_WRITE_4 (struct xl_softc*,int ,int ) ;
 int DELAY (int) ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int XL_CMD_COAX_START ;
 int XL_CMD_COAX_STOP ;
 int XL_CMD_DOWN_STALL ;
 int XL_CMD_DOWN_UNSTALL ;
 int XL_CMD_INTR_ACK ;
 int XL_CMD_INTR_ENB ;
 int XL_CMD_RX_ENABLE ;
 int XL_CMD_RX_RESET ;
 int XL_CMD_RX_SET_THRESH ;
 int XL_CMD_SET_TX_RECLAIM ;
 int XL_CMD_STATS_DISABLE ;
 int XL_CMD_STATS_ENABLE ;
 int XL_CMD_STAT_ENB ;
 int XL_CMD_TX_ENABLE ;
 int XL_CMD_TX_RESET ;
 int XL_CMD_TX_SET_START ;
 int XL_CMD_UP_STALL ;
 int XL_CMD_UP_UNSTALL ;
 scalar_t__ XL_COMMAND ;
 int XL_DMACTL ;
 int XL_DMACTL_UP_RX_EARLY ;
 int XL_DOWNLIST_PTR ;
 scalar_t__ XL_DOWN_POLL ;
 int XL_FLAG_FUNCREG ;
 int XL_FLAG_WOL ;
 int XL_INTRS ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_MACCTRL_ALLOW_LARGE_PACK ;
 int XL_NETDIAG_UPPER_BYTES_ENABLE ;
 int XL_PACKET_SIZE ;
 int XL_SEL_WIN (int) ;
 scalar_t__ XL_TX_FREETHRESH ;
 scalar_t__ XL_TYPE_905B ;
 int XL_UPLIST_PTR ;
 scalar_t__ XL_W2_STATION_ADDR_LO ;
 scalar_t__ XL_W2_STATION_MASK_LO ;
 scalar_t__ XL_W3_MAC_CTRL ;
 scalar_t__ XL_W3_MAXPKTSIZE ;
 scalar_t__ XL_W4_NET_DIAG ;
 scalar_t__ XL_W7_BM_PME ;
 scalar_t__ XL_XCVR_COAX ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int callout_reset (int *,int ,int ,struct xl_softc*) ;
 struct mii_data* device_get_softc (int *) ;
 int device_printf (int ,char*,int) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int xl_list_rx_init (struct xl_softc*) ;
 int xl_list_tx_init (struct xl_softc*) ;
 int xl_list_tx_init_90xB (struct xl_softc*) ;
 int xl_reset (struct xl_softc*) ;
 int xl_rxfilter (struct xl_softc*) ;
 int xl_stats_update (struct xl_softc*) ;
 int xl_stop (struct xl_softc*) ;
 int xl_tick ;
 int xl_wait (struct xl_softc*) ;

__attribute__((used)) static void
xl_init_locked(struct xl_softc *sc)
{
 struct ifnet *ifp = sc->xl_ifp;
 int error, i;
 struct mii_data *mii = ((void*)0);

 XL_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;



 xl_stop(sc);


 xl_reset(sc);

 if (sc->xl_miibus == ((void*)0)) {
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_RESET);
  xl_wait(sc);
 }
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_RESET);
 xl_wait(sc);
 DELAY(10000);

 if (sc->xl_miibus != ((void*)0))
  mii = device_get_softc(sc->xl_miibus);





 if ((sc->xl_flags & XL_FLAG_WOL) != 0) {
  XL_SEL_WIN(7);
  CSR_READ_2(sc, XL_W7_BM_PME);
  CSR_WRITE_2(sc, XL_W7_BM_PME, 0);
 }

 XL_SEL_WIN(2);
 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  CSR_WRITE_1(sc, XL_W2_STATION_ADDR_LO + i,
    IF_LLADDR(sc->xl_ifp)[i]);
 }


 for (i = 0; i < 3; i++)
  CSR_WRITE_2(sc, XL_W2_STATION_MASK_LO + (i * 2), 0);
 error = xl_list_rx_init(sc);
 if (error) {
  device_printf(sc->xl_dev, "initialization of the rx ring failed (%d)\n",
      error);
  xl_stop(sc);
  return;
 }


 if (sc->xl_type == XL_TYPE_905B)
  error = xl_list_tx_init_90xB(sc);
 else
  error = xl_list_tx_init(sc);
 if (error) {
  device_printf(sc->xl_dev, "initialization of the tx ring failed (%d)\n",
      error);
  xl_stop(sc);
  return;
 }







 CSR_WRITE_1(sc, XL_TX_FREETHRESH, XL_PACKET_SIZE >> 8);


 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_SET_START|sc->xl_tx_thresh);
 if (sc->xl_type == XL_TYPE_905B) {
  CSR_WRITE_2(sc, XL_COMMAND,
      XL_CMD_SET_TX_RECLAIM|(XL_PACKET_SIZE >> 4));
 }


 xl_rxfilter(sc);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_UP_STALL);
 xl_wait(sc);
 CSR_WRITE_4(sc, XL_UPLIST_PTR, sc->xl_ldata.xl_rx_dmaaddr);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_UP_UNSTALL);
 xl_wait(sc);

 if (sc->xl_type == XL_TYPE_905B) {

  CSR_WRITE_1(sc, XL_DOWN_POLL, 64);

  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_DOWN_STALL);
  xl_wait(sc);
  CSR_WRITE_4(sc, XL_DOWNLIST_PTR,
      sc->xl_cdata.xl_tx_chain[0].xl_phys);
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_DOWN_UNSTALL);
  xl_wait(sc);
 }





 XL_SEL_WIN(3);
 if (sc->xl_xcvr == XL_XCVR_COAX)
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_COAX_START);
 else
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_COAX_STOP);
 if (sc->xl_type == XL_TYPE_905B)
  CSR_WRITE_2(sc, XL_W3_MAXPKTSIZE, XL_PACKET_SIZE);
 else {
  u_int8_t macctl;
  macctl = CSR_READ_1(sc, XL_W3_MAC_CTRL);
  macctl |= XL_MACCTRL_ALLOW_LARGE_PACK;
  CSR_WRITE_1(sc, XL_W3_MAC_CTRL, macctl);
 }


 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_STATS_DISABLE);
 xl_stats_update(sc);
 XL_SEL_WIN(4);
 CSR_WRITE_2(sc, XL_W4_NET_DIAG, XL_NETDIAG_UPPER_BYTES_ENABLE);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_STATS_ENABLE);




 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_INTR_ACK|0xFF);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_STAT_ENB|XL_INTRS);






 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_INTR_ENB|XL_INTRS);
 if (sc->xl_flags & XL_FLAG_FUNCREG)
     bus_space_write_4(sc->xl_ftag, sc->xl_fhandle, 4, 0x8000);


 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_SET_THRESH|(XL_PACKET_SIZE >>2));
 CSR_WRITE_4(sc, XL_DMACTL, XL_DMACTL_UP_RX_EARLY);


 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_ENABLE);
 xl_wait(sc);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_ENABLE);
 xl_wait(sc);


 if (mii != ((void*)0))
  mii_mediachg(mii);


 XL_SEL_WIN(7);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc->xl_wdog_timer = 0;
 callout_reset(&sc->xl_tick_callout, hz, xl_tick, sc);
}
