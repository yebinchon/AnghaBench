
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {int rl_rx_prodidx; int rl_rx_list_map; int rl_rx_list_tag; TYPE_3__* rl_rx_desc; TYPE_2__* rl_jrx_desc; struct rl_desc* rl_rx_list; } ;
struct rl_softc {int rl_flags; int rl_rxlenmask; scalar_t__ rl_type; TYPE_4__ rl_ldata; struct mbuf* rl_tail; struct mbuf* rl_head; struct ifnet* rl_ifp; } ;
struct rl_desc {int rl_vlanctl; int rl_cmdstat; } ;
struct TYPE_5__ {int len; int csum_flags; int csum_data; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {scalar_t__ if_mtu; int if_drv_flags; int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_7__ {struct mbuf* rx_m; } ;
struct TYPE_6__ {struct mbuf* rx_m; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int EAGAIN ;
 int ETHER_CRC_LEN ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 int RE_RX_DESC_BUFLEN ;
 scalar_t__ RL_8169 ;
 int RL_FLAG_DESCV2 ;
 int RL_FLAG_JUMBOV2 ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 scalar_t__ RL_MTU ;
 int RL_RDESC_IPV4 ;
 int RL_RDESC_STAT_EOF ;
 int RL_RDESC_STAT_ERRS ;
 int RL_RDESC_STAT_GIANT ;
 int RL_RDESC_STAT_IPSUMBAD ;
 int RL_RDESC_STAT_OWN ;
 int RL_RDESC_STAT_PROTOID ;
 int RL_RDESC_STAT_RXERRSUM ;
 int RL_RDESC_STAT_SOF ;
 int RL_RDESC_STAT_TCP ;
 int RL_RDESC_STAT_TCPSUMBAD ;
 int RL_RDESC_STAT_UDP ;
 int RL_RDESC_STAT_UDPSUMBAD ;
 int RL_RDESC_VLANCTL_DATA ;
 int RL_RDESC_VLANCTL_TAG ;
 int RL_RX_DESC_NXT (struct rl_softc*,int) ;
 scalar_t__ RL_TCPPKT (int) ;
 scalar_t__ RL_UDPPKT (int) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int bswap16 (int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ netmap_rx_irq (struct ifnet*,int ,int*) ;
 int re_discard_rxbuf (struct rl_softc*,int) ;
 int re_fixup_rx (struct mbuf*) ;
 int re_jumbo_newbuf (struct rl_softc*,int) ;
 int re_newbuf (struct rl_softc*,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
re_rxeof(struct rl_softc *sc, int *rx_npktsp)
{
 struct mbuf *m;
 struct ifnet *ifp;
 int i, rxerr, total_len;
 struct rl_desc *cur_rx;
 u_int32_t rxstat, rxvlan;
 int jumbo, maxpkt = 16, rx_npkts = 0;

 RL_LOCK_ASSERT(sc);

 ifp = sc->rl_ifp;




 if (ifp->if_mtu > RL_MTU && (sc->rl_flags & RL_FLAG_JUMBOV2) != 0)
  jumbo = 1;
 else
  jumbo = 0;



 bus_dmamap_sync(sc->rl_ldata.rl_rx_list_tag,
     sc->rl_ldata.rl_rx_list_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (i = sc->rl_ldata.rl_rx_prodidx; maxpkt > 0;
     i = RL_RX_DESC_NXT(sc, i)) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;
  cur_rx = &sc->rl_ldata.rl_rx_list[i];
  rxstat = le32toh(cur_rx->rl_cmdstat);
  if ((rxstat & RL_RDESC_STAT_OWN) != 0)
   break;
  total_len = rxstat & sc->rl_rxlenmask;
  rxvlan = le32toh(cur_rx->rl_vlanctl);
  if (jumbo != 0)
   m = sc->rl_ldata.rl_jrx_desc[i].rx_m;
  else
   m = sc->rl_ldata.rl_rx_desc[i].rx_m;

  if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0 &&
      (rxstat & (RL_RDESC_STAT_SOF | RL_RDESC_STAT_EOF)) !=
      (RL_RDESC_STAT_SOF | RL_RDESC_STAT_EOF)) {




   re_discard_rxbuf(sc, i);
   continue;
  } else if ((rxstat & RL_RDESC_STAT_EOF) == 0) {
   if (re_newbuf(sc, i) != 0) {




    if (sc->rl_head != ((void*)0)) {
     m_freem(sc->rl_head);
     sc->rl_head = sc->rl_tail = ((void*)0);
    }
    re_discard_rxbuf(sc, i);
    continue;
   }
   m->m_len = RE_RX_DESC_BUFLEN;
   if (sc->rl_head == ((void*)0))
    sc->rl_head = sc->rl_tail = m;
   else {
    m->m_flags &= ~M_PKTHDR;
    sc->rl_tail->m_next = m;
    sc->rl_tail = m;
   }
   continue;
  }
  if (sc->rl_type == RL_8169)
   rxstat >>= 1;





  if ((rxstat & RL_RDESC_STAT_RXERRSUM) != 0) {
   rxerr = 1;
   if ((sc->rl_flags & RL_FLAG_JUMBOV2) == 0 &&
       total_len > 8191 &&
       (rxstat & RL_RDESC_STAT_ERRS) == RL_RDESC_STAT_GIANT)
    rxerr = 0;
   if (rxerr != 0) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);




    if (sc->rl_head != ((void*)0)) {
     m_freem(sc->rl_head);
     sc->rl_head = sc->rl_tail = ((void*)0);
    }
    re_discard_rxbuf(sc, i);
    continue;
   }
  }





  if (jumbo != 0)
   rxerr = re_jumbo_newbuf(sc, i);
  else
   rxerr = re_newbuf(sc, i);
  if (rxerr != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   if (sc->rl_head != ((void*)0)) {
    m_freem(sc->rl_head);
    sc->rl_head = sc->rl_tail = ((void*)0);
   }
   re_discard_rxbuf(sc, i);
   continue;
  }

  if (sc->rl_head != ((void*)0)) {
   if (jumbo != 0)
    m->m_len = total_len;
   else {
    m->m_len = total_len % RE_RX_DESC_BUFLEN;
    if (m->m_len == 0)
     m->m_len = RE_RX_DESC_BUFLEN;
   }






   if (m->m_len <= ETHER_CRC_LEN) {
    sc->rl_tail->m_len -=
        (ETHER_CRC_LEN - m->m_len);
    m_freem(m);
   } else {
    m->m_len -= ETHER_CRC_LEN;
    m->m_flags &= ~M_PKTHDR;
    sc->rl_tail->m_next = m;
   }
   m = sc->rl_head;
   sc->rl_head = sc->rl_tail = ((void*)0);
   m->m_pkthdr.len = total_len - ETHER_CRC_LEN;
  } else
   m->m_pkthdr.len = m->m_len =
       (total_len - ETHER_CRC_LEN);




  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  m->m_pkthdr.rcvif = ifp;



  if (ifp->if_capenable & IFCAP_RXCSUM) {
   if ((sc->rl_flags & RL_FLAG_DESCV2) == 0) {

    if (rxstat & RL_RDESC_STAT_PROTOID)
     m->m_pkthdr.csum_flags |=
         CSUM_IP_CHECKED;
    if (!(rxstat & RL_RDESC_STAT_IPSUMBAD))
     m->m_pkthdr.csum_flags |=
         CSUM_IP_VALID;


    if ((RL_TCPPKT(rxstat) &&
        !(rxstat & RL_RDESC_STAT_TCPSUMBAD)) ||
        (RL_UDPPKT(rxstat) &&
         !(rxstat & RL_RDESC_STAT_UDPSUMBAD))) {
     m->m_pkthdr.csum_flags |=
      CSUM_DATA_VALID|CSUM_PSEUDO_HDR;
     m->m_pkthdr.csum_data = 0xffff;
    }
   } else {



    if ((rxstat & RL_RDESC_STAT_PROTOID) &&
        (rxvlan & RL_RDESC_IPV4))
     m->m_pkthdr.csum_flags |=
         CSUM_IP_CHECKED;
    if (!(rxstat & RL_RDESC_STAT_IPSUMBAD) &&
        (rxvlan & RL_RDESC_IPV4))
     m->m_pkthdr.csum_flags |=
         CSUM_IP_VALID;
    if (((rxstat & RL_RDESC_STAT_TCP) &&
        !(rxstat & RL_RDESC_STAT_TCPSUMBAD)) ||
        ((rxstat & RL_RDESC_STAT_UDP) &&
        !(rxstat & RL_RDESC_STAT_UDPSUMBAD))) {
     m->m_pkthdr.csum_flags |=
      CSUM_DATA_VALID|CSUM_PSEUDO_HDR;
     m->m_pkthdr.csum_data = 0xffff;
    }
   }
  }
  maxpkt--;
  if (rxvlan & RL_RDESC_VLANCTL_TAG) {
   m->m_pkthdr.ether_vtag =
       bswap16((rxvlan & RL_RDESC_VLANCTL_DATA));
   m->m_flags |= M_VLANTAG;
  }
  RL_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  RL_LOCK(sc);
  rx_npkts++;
 }



 bus_dmamap_sync(sc->rl_ldata.rl_rx_list_tag,
     sc->rl_ldata.rl_rx_list_map,
     BUS_DMASYNC_PREWRITE|BUS_DMASYNC_PREREAD);

 sc->rl_ldata.rl_rx_prodidx = i;

 if (rx_npktsp != ((void*)0))
  *rx_npktsp = rx_npkts;
 if (maxpkt)
  return (EAGAIN);

 return (0);
}
