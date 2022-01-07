
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct dc_chain_data {int ** dc_tx_chain; int * dc_tx_map; int ** dc_rx_chain; int * dc_rx_map; } ;
struct dc_list_data {TYPE_1__* dc_tx_list; TYPE_1__* dc_rx_list; } ;
struct dc_softc {int dc_tx_lmap; int dc_tx_ltag; int dc_tx_mtag; int dc_smap; int dc_stag; int dc_rx_lmap; int dc_rx_ltag; int dc_rx_mtag; scalar_t__ dc_link; scalar_t__ dc_wdog_timer; int dc_wdog_ch; int dc_stat_ch; struct dc_chain_data dc_cdata; struct dc_list_data dc_ldata; struct ifnet* dc_ifp; } ;
struct TYPE_2__ {int dc_ctl; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_IMR ;
 int DC_LOCK_ASSERT (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_RX_ON ;
 int DC_NETCFG_TX_ON ;
 int DC_RXADDR ;
 int DC_RX_LIST_CNT ;
 int DC_RX_LIST_SZ ;
 int DC_TXADDR ;
 int DC_TXCTL_SETUP ;
 int DC_TX_LIST_CNT ;
 int DC_TX_LIST_SZ ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (TYPE_1__*,int ) ;
 int callout_stop (int *) ;
 int dc_netcfg_wait (struct dc_softc*) ;
 int le32toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
dc_stop(struct dc_softc *sc)
{
 struct ifnet *ifp;
 struct dc_list_data *ld;
 struct dc_chain_data *cd;
 int i;
 uint32_t ctl, netcfg;

 DC_LOCK_ASSERT(sc);

 ifp = sc->dc_ifp;
 ld = &sc->dc_ldata;
 cd = &sc->dc_cdata;

 callout_stop(&sc->dc_stat_ch);
 callout_stop(&sc->dc_wdog_ch);
 sc->dc_wdog_timer = 0;
 sc->dc_link = 0;

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

 netcfg = CSR_READ_4(sc, DC_NETCFG);
 if (netcfg & (DC_NETCFG_RX_ON | DC_NETCFG_TX_ON))
  CSR_WRITE_4(sc, DC_NETCFG,
     netcfg & ~(DC_NETCFG_RX_ON | DC_NETCFG_TX_ON));
 CSR_WRITE_4(sc, DC_IMR, 0x00000000);

 if (netcfg & (DC_NETCFG_RX_ON | DC_NETCFG_TX_ON))
  dc_netcfg_wait(sc);

 CSR_WRITE_4(sc, DC_TXADDR, 0x00000000);
 CSR_WRITE_4(sc, DC_RXADDR, 0x00000000);




 for (i = 0; i < DC_RX_LIST_CNT; i++) {
  if (cd->dc_rx_chain[i] != ((void*)0)) {
   bus_dmamap_sync(sc->dc_rx_mtag,
       cd->dc_rx_map[i], BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->dc_rx_mtag,
       cd->dc_rx_map[i]);
   m_freem(cd->dc_rx_chain[i]);
   cd->dc_rx_chain[i] = ((void*)0);
  }
 }
 bzero(ld->dc_rx_list, DC_RX_LIST_SZ);
 bus_dmamap_sync(sc->dc_rx_ltag, sc->dc_rx_lmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);




 for (i = 0; i < DC_TX_LIST_CNT; i++) {
  if (cd->dc_tx_chain[i] != ((void*)0)) {
   ctl = le32toh(ld->dc_tx_list[i].dc_ctl);
   if (ctl & DC_TXCTL_SETUP) {
    bus_dmamap_sync(sc->dc_stag, sc->dc_smap,
        BUS_DMASYNC_POSTWRITE);
   } else {
    bus_dmamap_sync(sc->dc_tx_mtag,
        cd->dc_tx_map[i], BUS_DMASYNC_POSTWRITE);
    bus_dmamap_unload(sc->dc_tx_mtag,
        cd->dc_tx_map[i]);
    m_freem(cd->dc_tx_chain[i]);
   }
   cd->dc_tx_chain[i] = ((void*)0);
  }
 }
 bzero(ld->dc_tx_list, DC_TX_LIST_SZ);
 bus_dmamap_sync(sc->dc_tx_ltag, sc->dc_tx_lmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
