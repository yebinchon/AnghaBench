
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ifmedia {int ifm_media; TYPE_1__* ifm_cur; } ;
struct ti_softc {scalar_t__ ti_hwrev; struct ifmedia ifmedia; int ti_watchdog; scalar_t__ ti_rx_saved_considx; int ti_dev; struct ifnet* ti_ifp; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifnet {scalar_t__ if_mtu; int if_flags; int if_drv_flags; } ;
struct TYPE_2__ {int ifm_media; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 scalar_t__ ETHERMTU ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int* IF_LLADDR (struct ifnet*) ;
 int TI_CMD_CODE_FILT_ENB ;
 int TI_CMD_CODE_PROMISC_DIS ;
 int TI_CMD_CODE_PROMISC_ENB ;
 int TI_CMD_CODE_STACK_UP ;
 int TI_CMD_FDR_FILTERING ;
 int TI_CMD_HOST_STATE ;
 int TI_CMD_SET_MAC_ADDR ;
 int TI_CMD_SET_PROMISC_MODE ;
 int TI_CMD_UPDATE_GENCOM ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_GCR_IFINDEX ;
 int TI_GCR_IFMTU ;
 int TI_GCR_PAR0 ;
 int TI_GCR_PAR1 ;
 int TI_GCR_RXRETURNCONS_IDX ;
 scalar_t__ TI_HWREV_TIGON ;
 scalar_t__ TI_HWREV_TIGON_II ;
 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int TI_MB_HOSTINTR ;
 int callout_reset (int *,int ,int ,struct ti_softc*) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ti_ifmedia_upd_locked (struct ti_softc*) ;
 scalar_t__ ti_init_rx_ring_jumbo (struct ti_softc*) ;
 scalar_t__ ti_init_rx_ring_mini (struct ti_softc*) ;
 scalar_t__ ti_init_rx_ring_std (struct ti_softc*) ;
 int ti_init_tx_ring (struct ti_softc*) ;
 int ti_setmulti (struct ti_softc*) ;
 int ti_watchdog ;

__attribute__((used)) static void ti_init2(struct ti_softc *sc)
{
 struct ti_cmd_desc cmd;
 struct ifnet *ifp;
 uint8_t *ea;
 struct ifmedia *ifm;
 int tmp;

 TI_LOCK_ASSERT(sc);

 ifp = sc->ti_ifp;


 CSR_WRITE_4(sc, TI_GCR_IFINDEX, device_get_unit(sc->ti_dev));
 CSR_WRITE_4(sc, TI_GCR_IFMTU, ifp->if_mtu +
     ETHER_HDR_LEN + ETHER_CRC_LEN + ETHER_VLAN_ENCAP_LEN);
 TI_DO_CMD(TI_CMD_UPDATE_GENCOM, 0, 0);


 ea = IF_LLADDR(sc->ti_ifp);
 CSR_WRITE_4(sc, TI_GCR_PAR0, (ea[0] << 8) | ea[1]);
 CSR_WRITE_4(sc, TI_GCR_PAR1,
     (ea[2] << 24) | (ea[3] << 16) | (ea[4] << 8) | ea[5]);
 TI_DO_CMD(TI_CMD_SET_MAC_ADDR, 0, 0);


 if (ifp->if_flags & IFF_PROMISC) {
  TI_DO_CMD(TI_CMD_SET_PROMISC_MODE, TI_CMD_CODE_PROMISC_ENB, 0);
 } else {
  TI_DO_CMD(TI_CMD_SET_PROMISC_MODE, TI_CMD_CODE_PROMISC_DIS, 0);
 }


 ti_setmulti(sc);





 if (sc->ti_hwrev == TI_HWREV_TIGON) {
  TI_DO_CMD(TI_CMD_FDR_FILTERING, TI_CMD_CODE_FILT_ENB, 0);
 }


 if (ti_init_rx_ring_std(sc) != 0) {

  device_printf(sc->ti_dev, "no memory for std Rx buffers.\n");
  return;
 }


 if (ifp->if_mtu > ETHERMTU + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN) {
  if (ti_init_rx_ring_jumbo(sc) != 0) {

   device_printf(sc->ti_dev,
       "no memory for jumbo Rx buffers.\n");
   return;
  }
 }





 if (sc->ti_hwrev == TI_HWREV_TIGON_II) {
  if (ti_init_rx_ring_mini(sc) != 0) {

   device_printf(sc->ti_dev,
       "no memory for mini Rx buffers.\n");
   return;
  }
 }

 CSR_WRITE_4(sc, TI_GCR_RXRETURNCONS_IDX, 0);
 sc->ti_rx_saved_considx = 0;


 ti_init_tx_ring(sc);


 TI_DO_CMD(TI_CMD_HOST_STATE, TI_CMD_CODE_STACK_UP, 0);


 CSR_WRITE_4(sc, TI_MB_HOSTINTR, 0);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 callout_reset(&sc->ti_watchdog, hz, ti_watchdog, sc);







 ifm = &sc->ifmedia;
 tmp = ifm->ifm_media;
 ifm->ifm_media = ifm->ifm_cur->ifm_media;
 ti_ifmedia_upd_locked(sc);
 ifm->ifm_media = tmp;
}
