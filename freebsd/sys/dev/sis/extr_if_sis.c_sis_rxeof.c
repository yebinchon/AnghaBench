
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sis_softc {int sis_rx_cons; scalar_t__ rxcycles; int sis_rx_list_map; int sis_rx_list_tag; struct sis_rxdesc* sis_rxdesc; struct sis_desc* sis_rx_list; struct ifnet* sis_ifp; } ;
struct sis_rxdesc {struct mbuf* rx_m; } ;
struct sis_desc {int sis_cmdsts; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETHER_CRC_LEN ;
 int ETHER_MAX_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int SIS_CMDSTS_BUFLEN ;
 int SIS_CMDSTS_OWN ;
 int SIS_INC (int,int ) ;
 int SIS_LOCK (struct sis_softc*) ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int SIS_RXSTAT_COLL ;
 scalar_t__ SIS_RXSTAT_ERROR (int) ;
 int SIS_RXSTAT_GIANT ;
 int SIS_RX_LIST_CNT ;
 int SIS_UNLOCK (struct sis_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int sis_discard_rxbuf (struct sis_rxdesc*) ;
 int sis_fixup_rx (struct mbuf*) ;
 scalar_t__ sis_newbuf (struct sis_softc*,struct sis_rxdesc*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
sis_rxeof(struct sis_softc *sc)
{
 struct mbuf *m;
 struct ifnet *ifp;
 struct sis_rxdesc *rxd;
 struct sis_desc *cur_rx;
 int prog, rx_cons, rx_npkts = 0, total_len;
 uint32_t rxstat;

 SIS_LOCK_ASSERT(sc);

 bus_dmamap_sync(sc->sis_rx_list_tag, sc->sis_rx_list_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 rx_cons = sc->sis_rx_cons;
 ifp = sc->sis_ifp;

 for (prog = 0; (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
     SIS_INC(rx_cons, SIS_RX_LIST_CNT), prog++) {







  cur_rx = &sc->sis_rx_list[rx_cons];
  rxstat = le32toh(cur_rx->sis_cmdsts);
  if ((rxstat & SIS_CMDSTS_OWN) == 0)
   break;
  rxd = &sc->sis_rxdesc[rx_cons];

  total_len = (rxstat & SIS_CMDSTS_BUFLEN) - ETHER_CRC_LEN;
  if ((ifp->if_capenable & IFCAP_VLAN_MTU) != 0 &&
      total_len <= (ETHER_MAX_LEN + ETHER_VLAN_ENCAP_LEN -
      ETHER_CRC_LEN))
   rxstat &= ~SIS_RXSTAT_GIANT;
  if (SIS_RXSTAT_ERROR(rxstat) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   if (rxstat & SIS_RXSTAT_COLL)
    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   sis_discard_rxbuf(rxd);
   continue;
  }


  m = rxd->rx_m;
  if (sis_newbuf(sc, rxd) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   sis_discard_rxbuf(rxd);
   continue;
  }


  m->m_pkthdr.len = m->m_len = total_len;







  sis_fixup_rx(m);

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  m->m_pkthdr.rcvif = ifp;

  SIS_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  SIS_LOCK(sc);
  rx_npkts++;
 }

 if (prog > 0) {
  sc->sis_rx_cons = rx_cons;
  bus_dmamap_sync(sc->sis_rx_list_tag, sc->sis_rx_list_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }

 return (rx_npkts);
}
