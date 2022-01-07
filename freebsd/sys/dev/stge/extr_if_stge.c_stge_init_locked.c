
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int uint16_t ;
struct stge_softc {int sc_txthresh; int sc_IntEnable; unsigned int sc_DMACtrl; int sc_if_framesize; int sc_rev; int sc_dev; int sc_tick_ch; scalar_t__ sc_link; int sc_rxint_dmawait; int sc_rxint_nframe; int sc_miibus; struct ifnet* sc_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_mtu; } ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 unsigned int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_1 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,unsigned int) ;
 unsigned int DMAC_TxBurstLimit (int) ;
 int ETHER_ADDR_LEN ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int IS_HostError ;
 int IS_RFDListEnd ;
 int IS_RxDMAComplete ;
 int IS_TxComplete ;
 int IS_TxDMAComplete ;
 int MC_IFS96bit ;
 unsigned int MC_IFSSelect (int ) ;
 unsigned int MC_MASK ;
 unsigned int MC_RxEnable ;
 unsigned int MC_StatisticsEnable ;
 unsigned int MC_TxEnable ;
 unsigned int RDIC_RxDMAWaitTime (int ) ;
 unsigned int RDIC_RxFrameCount (int ) ;
 unsigned int STGE_ADDR_HI (int ) ;
 unsigned int STGE_ADDR_LO (int ) ;
 int STGE_DMACtrl ;
 int STGE_DebugCtrl ;
 int STGE_FlowOffThresh ;
 int STGE_FlowOnTresh ;
 int STGE_IntEnable ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_MACCtrl ;
 int STGE_MaxFrameSize ;
 int STGE_RESET_FULL ;
 int STGE_RFDListPtrHi ;
 int STGE_RFDListPtrLo ;
 int STGE_RMONStatisticsMask ;
 int STGE_RXINT_USECS2TICK (int ) ;
 int STGE_RX_RING_ADDR (struct stge_softc*,int ) ;
 int STGE_RxDMABurstThresh ;
 int STGE_RxDMAIntCtrl ;
 int STGE_RxDMAPollPeriod ;
 int STGE_RxDMAUrgentThresh ;
 int STGE_RxEarlyThresh ;
 int STGE_StationAddress0 ;
 int STGE_StationAddress1 ;
 int STGE_StationAddress2 ;
 int STGE_StatisticsMask ;
 int STGE_TFDListPtrHi ;
 int STGE_TFDListPtrLo ;
 int STGE_TX_RING_ADDR (struct stge_softc*,int ) ;
 int STGE_TxDMABurstThresh ;
 int STGE_TxDMAPollPeriod ;
 int STGE_TxDMAUrgentThresh ;
 int STGE_TxStartThresh ;
 int bcopy (int ,int *,int ) ;
 int callout_reset (int *,int ,int ,struct stge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int htole16 (int ) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int stge_init_rx_ring (struct stge_softc*) ;
 int stge_init_tx_ring (struct stge_softc*) ;
 int stge_reset (struct stge_softc*,int ) ;
 int stge_set_filter (struct stge_softc*) ;
 int stge_set_multi (struct stge_softc*) ;
 int stge_start_rx (struct stge_softc*) ;
 int stge_start_tx (struct stge_softc*) ;
 int stge_stop (struct stge_softc*) ;
 int stge_tick ;
 int stge_vlan_setup (struct stge_softc*) ;

__attribute__((used)) static void
stge_init_locked(struct stge_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint16_t eaddr[3];
 uint32_t v;
 int error;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;
 mii = device_get_softc(sc->sc_miibus);




 stge_stop(sc);




 stge_reset(sc, STGE_RESET_FULL);


 error = stge_init_rx_ring(sc);
        if (error != 0) {
                device_printf(sc->sc_dev,
                    "initialization failed: no memory for rx buffers\n");
                stge_stop(sc);
  goto out;
        }
 stge_init_tx_ring(sc);


 bcopy(IF_LLADDR(ifp), eaddr, ETHER_ADDR_LEN);
 CSR_WRITE_2(sc, STGE_StationAddress0, htole16(eaddr[0]));
 CSR_WRITE_2(sc, STGE_StationAddress1, htole16(eaddr[1]));
 CSR_WRITE_2(sc, STGE_StationAddress2, htole16(eaddr[2]));





 CSR_WRITE_4(sc, STGE_RMONStatisticsMask, 0xffffffff);
 CSR_WRITE_4(sc, STGE_StatisticsMask,
     (1U << 1) | (1U << 2) | (1U << 3) | (1U << 4) | (1U << 5) |
     (1U << 6) | (1U << 7) | (1U << 8) | (1U << 9) | (1U << 10) |
     (1U << 13) | (1U << 14) | (1U << 15) | (1U << 19) | (1U << 20) |
     (1U << 21));


 stge_set_filter(sc);

 stge_set_multi(sc);




 CSR_WRITE_4(sc, STGE_TFDListPtrHi,
     STGE_ADDR_HI(STGE_TX_RING_ADDR(sc, 0)));
 CSR_WRITE_4(sc, STGE_TFDListPtrLo,
     STGE_ADDR_LO(STGE_TX_RING_ADDR(sc, 0)));

 CSR_WRITE_4(sc, STGE_RFDListPtrHi,
     STGE_ADDR_HI(STGE_RX_RING_ADDR(sc, 0)));
 CSR_WRITE_4(sc, STGE_RFDListPtrLo,
     STGE_ADDR_LO(STGE_RX_RING_ADDR(sc, 0)));






 CSR_WRITE_1(sc, STGE_TxDMAPollPeriod, 127);


 CSR_WRITE_1(sc, STGE_RxDMAPollPeriod, 1);


 CSR_WRITE_2(sc, STGE_TxStartThresh, sc->sc_txthresh);


 CSR_WRITE_1(sc, STGE_RxDMABurstThresh, 0x30);
 CSR_WRITE_1(sc, STGE_RxDMAUrgentThresh, 0x30);


 CSR_WRITE_2(sc, STGE_RxEarlyThresh, 0x7ff);


 CSR_WRITE_1(sc, STGE_TxDMABurstThresh, 0x30);
 CSR_WRITE_1(sc, STGE_TxDMAUrgentThresh, 0x04);
 CSR_WRITE_4(sc, STGE_RxDMAIntCtrl,
     RDIC_RxFrameCount(sc->sc_rxint_nframe) |
     RDIC_RxDMAWaitTime(STGE_RXINT_USECS2TICK(sc->sc_rxint_dmawait)));




 sc->sc_IntEnable = IS_HostError | IS_TxComplete |
     IS_TxDMAComplete | IS_RxDMAComplete | IS_RFDListEnd;






 CSR_WRITE_2(sc, STGE_IntEnable, sc->sc_IntEnable);





 CSR_WRITE_4(sc, STGE_DMACtrl, sc->sc_DMACtrl | DMAC_TxBurstLimit(3));






 CSR_WRITE_2(sc, STGE_FlowOnTresh, 29696 / 16);
 CSR_WRITE_2(sc, STGE_FlowOffThresh, 3056 / 16);




 sc->sc_if_framesize = ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;
 CSR_WRITE_2(sc, STGE_MaxFrameSize, sc->sc_if_framesize);
 CSR_WRITE_4(sc, STGE_MACCtrl, MC_IFSSelect(MC_IFS96bit));

 stge_vlan_setup(sc);

 if (sc->sc_rev >= 6) {

  CSR_WRITE_2(sc, STGE_DebugCtrl,
      CSR_READ_2(sc, STGE_DebugCtrl) | 0x0200);


  CSR_WRITE_2(sc, STGE_DebugCtrl,
      CSR_READ_2(sc, STGE_DebugCtrl) | 0x0010);

  CSR_WRITE_2(sc, STGE_DebugCtrl,
      CSR_READ_2(sc, STGE_DebugCtrl) | 0x0020);
 }

 v = CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK;
 v |= MC_StatisticsEnable | MC_TxEnable | MC_RxEnable;
 CSR_WRITE_4(sc, STGE_MACCtrl, v);




 stge_start_tx(sc);
 stge_start_rx(sc);

 sc->sc_link = 0;



 mii_mediachg(mii);




 callout_reset(&sc->sc_tick_ch, hz, stge_tick, sc);




 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 out:
 if (error != 0)
  device_printf(sc->sc_dev, "interface not running\n");
}
