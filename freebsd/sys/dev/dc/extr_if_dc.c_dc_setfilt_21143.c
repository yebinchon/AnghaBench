
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_flags; int if_broadcastaddr; } ;
struct TYPE_4__ {int dc_tx_prod; int* dc_sbuf; struct mbuf** dc_tx_chain; int dc_tx_cnt; } ;
struct TYPE_3__ {struct dc_desc* dc_tx_list; } ;
struct dc_softc {int dc_wdog_timer; int dc_smap; int dc_stag; int dc_tx_lmap; int dc_tx_ltag; struct ifnet* dc_ifp; TYPE_2__ dc_cdata; int dc_saddr; TYPE_1__ dc_ldata; } ;
struct dc_desc {int dc_data; int dc_ctl; int dc_status; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_ADDR_LO (int ) ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_FILTER_HASHPERF ;
 int DC_INC (int,int ) ;
 int DC_NETCFG ;
 int DC_NETCFG_RX_ALLMULTI ;
 int DC_NETCFG_RX_PROMISC ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SFRAME_LEN ;
 int DC_SP_MAC (int ) ;
 int DC_TXCTL_FINT ;
 int DC_TXCTL_SETUP ;
 int DC_TXCTL_TLINK ;
 int DC_TXSTART ;
 int DC_TXSTAT_OWN ;
 int DC_TX_LIST_CNT ;
 int DELAY (int) ;
 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int IF_LLADDR (struct ifnet*) ;
 int bcopy (int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int*,int) ;
 int dc_hash_maddr_21143 ;
 int dc_mchash_le (struct dc_softc*,int ) ;
 int htole32 (int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;

__attribute__((used)) static void
dc_setfilt_21143(struct dc_softc *sc)
{
 uint16_t eaddr[(ETHER_ADDR_LEN+1)/2];
 struct dc_desc *sframe;
 uint32_t h, *sp;
 struct ifnet *ifp;
 int i;

 ifp = sc->dc_ifp;

 i = sc->dc_cdata.dc_tx_prod;
 DC_INC(sc->dc_cdata.dc_tx_prod, DC_TX_LIST_CNT);
 sc->dc_cdata.dc_tx_cnt++;
 sframe = &sc->dc_ldata.dc_tx_list[i];
 sp = sc->dc_cdata.dc_sbuf;
 bzero(sp, DC_SFRAME_LEN);

 sframe->dc_data = htole32(DC_ADDR_LO(sc->dc_saddr));
 sframe->dc_ctl = htole32(DC_SFRAME_LEN | DC_TXCTL_SETUP |
     DC_TXCTL_TLINK | DC_FILTER_HASHPERF | DC_TXCTL_FINT);

 sc->dc_cdata.dc_tx_chain[i] = (struct mbuf *)sc->dc_cdata.dc_sbuf;


 if (ifp->if_flags & IFF_PROMISC)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);
 else
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);

 if (ifp->if_flags & IFF_ALLMULTI)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);
 else
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);

 if_foreach_llmaddr(ifp, dc_hash_maddr_21143, sp);

 if (ifp->if_flags & IFF_BROADCAST) {
  h = dc_mchash_le(sc, ifp->if_broadcastaddr);
  sp[h >> 4] |= htole32(1 << (h & 0xF));
 }


 bcopy(IF_LLADDR(sc->dc_ifp), eaddr, ETHER_ADDR_LEN);
 sp[39] = DC_SP_MAC(eaddr[0]);
 sp[40] = DC_SP_MAC(eaddr[1]);
 sp[41] = DC_SP_MAC(eaddr[2]);

 sframe->dc_status = htole32(DC_TXSTAT_OWN);
 bus_dmamap_sync(sc->dc_tx_ltag, sc->dc_tx_lmap, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->dc_stag, sc->dc_smap, BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, DC_TXSTART, 0xFFFFFFFF);







 DELAY(10000);

 sc->dc_wdog_timer = 5;
}
