
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_flags; } ;
struct TYPE_4__ {int dc_tx_prod; int* dc_sbuf; struct mbuf** dc_tx_chain; int dc_tx_cnt; } ;
struct TYPE_3__ {struct dc_desc* dc_tx_list; } ;
struct dc_softc {int dc_wdog_timer; int dc_smap; int dc_stag; int dc_tx_lmap; int dc_tx_ltag; struct ifnet* dc_ifp; TYPE_2__ dc_cdata; int dc_saddr; TYPE_1__ dc_ldata; } ;
struct dc_desc {void* dc_status; void* dc_ctl; void* dc_data; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_ADDR_LO (int ) ;
 int DC_FILTER_PERFECT ;
 int DC_INC (int,int ) ;
 int DC_NETCFG ;
 int DC_NETCFG_RX_ALLMULTI ;
 int DC_NETCFG_RX_ON ;
 int DC_NETCFG_RX_PROMISC ;
 int DC_NETCFG_TX_ON ;
 int DC_SFRAME_LEN ;
 void* DC_SP_MAC (int) ;
 int DC_TXCTL_FINT ;
 int DC_TXCTL_SETUP ;
 int DC_TXCTL_TLINK ;
 int DC_TXSTART ;
 int DC_TXSTAT_OWN ;
 int DC_TX_LIST_CNT ;
 int DC_ULI_FILTER_NPERF ;
 int DELAY (int) ;
 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IF_LLADDR (struct ifnet*) ;
 int bcopy (int ,int*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int*,int) ;
 int dc_hash_maddr_uli ;
 void* htole32 (int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;

__attribute__((used)) static void
dc_setfilt_uli(struct dc_softc *sc)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 struct ifnet *ifp;
 struct dc_desc *sframe;
 uint32_t filter, *sp;
 int i, mcnt;

 ifp = sc->dc_ifp;

 i = sc->dc_cdata.dc_tx_prod;
 DC_INC(sc->dc_cdata.dc_tx_prod, DC_TX_LIST_CNT);
 sc->dc_cdata.dc_tx_cnt++;
 sframe = &sc->dc_ldata.dc_tx_list[i];
 sp = sc->dc_cdata.dc_sbuf;
 bzero(sp, DC_SFRAME_LEN);

 sframe->dc_data = htole32(DC_ADDR_LO(sc->dc_saddr));
 sframe->dc_ctl = htole32(DC_SFRAME_LEN | DC_TXCTL_SETUP |
     DC_TXCTL_TLINK | DC_FILTER_PERFECT | DC_TXCTL_FINT);

 sc->dc_cdata.dc_tx_chain[i] = (struct mbuf *)sc->dc_cdata.dc_sbuf;


 bcopy(IF_LLADDR(sc->dc_ifp), eaddr, ETHER_ADDR_LEN);
 *sp++ = DC_SP_MAC(eaddr[1] << 8 | eaddr[0]);
 *sp++ = DC_SP_MAC(eaddr[3] << 8 | eaddr[2]);
 *sp++ = DC_SP_MAC(eaddr[5] << 8 | eaddr[4]);


 *sp++ = DC_SP_MAC(0xFFFF);
 *sp++ = DC_SP_MAC(0xFFFF);
 *sp++ = DC_SP_MAC(0xFFFF);


 filter = CSR_READ_4(sc, DC_NETCFG);
 filter &= ~(DC_NETCFG_RX_PROMISC | DC_NETCFG_RX_ALLMULTI);


 mcnt = if_foreach_llmaddr(ifp, dc_hash_maddr_uli, &sp);

 if (mcnt == DC_ULI_FILTER_NPERF)
  filter |= DC_NETCFG_RX_ALLMULTI;
 else
  for (; mcnt < DC_ULI_FILTER_NPERF; mcnt++) {
   *sp++ = DC_SP_MAC(0xFFFF);
   *sp++ = DC_SP_MAC(0xFFFF);
   *sp++ = DC_SP_MAC(0xFFFF);
  }

 if (filter & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON))
  CSR_WRITE_4(sc, DC_NETCFG,
      filter & ~(DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
 if (ifp->if_flags & IFF_PROMISC)
  filter |= DC_NETCFG_RX_PROMISC | DC_NETCFG_RX_ALLMULTI;
 if (ifp->if_flags & IFF_ALLMULTI)
  filter |= DC_NETCFG_RX_ALLMULTI;
 CSR_WRITE_4(sc, DC_NETCFG,
     filter & ~(DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
 if (filter & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON))
  CSR_WRITE_4(sc, DC_NETCFG, filter);

 sframe->dc_status = htole32(DC_TXSTAT_OWN);
 bus_dmamap_sync(sc->dc_tx_ltag, sc->dc_tx_lmap, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->dc_stag, sc->dc_smap, BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, DC_TXSTART, 0xFFFFFFFF);




 DELAY(1000);

 sc->dc_wdog_timer = 5;
}
