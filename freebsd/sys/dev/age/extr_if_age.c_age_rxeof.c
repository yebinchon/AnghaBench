
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rx_rdesc {int vtags; int len; int index; int flags; } ;
struct TYPE_4__ {scalar_t__ len; int csum_flags; int csum_data; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_2__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {scalar_t__ age_rxlen; struct mbuf* age_rxtail; struct mbuf* age_rxprev_tail; struct mbuf* age_rxhead; struct age_rxdesc* age_rxdesc; } ;
struct age_softc {TYPE_1__ age_cdata; struct ifnet* age_ifp; } ;
struct age_rxdesc {struct mbuf* rx_m; } ;


 int AGE_DESC_INC (int,int ) ;
 int AGE_LOCK (struct age_softc*) ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_RRD_CODE ;
 int AGE_RRD_CRC ;
 int AGE_RRD_DRIBBLE ;
 int AGE_RRD_ERROR ;
 int AGE_RRD_IPCSUM_NOK ;
 int AGE_RRD_IPV4 ;
 int AGE_RRD_LENGTH_NOK ;
 int AGE_RRD_OFLOW ;
 int AGE_RRD_RUNT ;
 int AGE_RRD_TCP ;
 int AGE_RRD_TCP_UDPCSUM_NOK ;
 int AGE_RRD_TRUNC ;
 int AGE_RRD_UDP ;
 int AGE_RRD_VLAN ;
 int AGE_RXCHAIN_RESET (struct age_softc*) ;
 int AGE_RX_BUF_SIZE ;
 scalar_t__ AGE_RX_BYTES (int) ;
 int AGE_RX_CONS (int) ;
 int AGE_RX_NSEGS (int) ;
 int AGE_RX_RING_CNT ;
 int AGE_RX_VLAN (int) ;
 int AGE_RX_VLAN_TAG (int) ;
 int AGE_UNLOCK (struct age_softc*) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 scalar_t__ ETHER_CRC_LEN ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IQDROPS ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 struct mbuf* age_fixup_rx (struct ifnet*,struct mbuf*) ;
 scalar_t__ age_newbuf (struct age_softc*,struct age_rxdesc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
age_rxeof(struct age_softc *sc, struct rx_rdesc *rxrd)
{
 struct age_rxdesc *rxd;
 struct ifnet *ifp;
 struct mbuf *mp, *m;
 uint32_t status, index, vtag;
 int count, nsegs;
 int rx_cons;

 AGE_LOCK_ASSERT(sc);

 ifp = sc->age_ifp;
 status = le32toh(rxrd->flags);
 index = le32toh(rxrd->index);
 rx_cons = AGE_RX_CONS(index);
 nsegs = AGE_RX_NSEGS(index);

 sc->age_cdata.age_rxlen = AGE_RX_BYTES(le32toh(rxrd->len));
 if ((status & (AGE_RRD_ERROR | AGE_RRD_LENGTH_NOK)) != 0) {
  status |= AGE_RRD_IPCSUM_NOK | AGE_RRD_TCP_UDPCSUM_NOK;
  if ((status & (AGE_RRD_CRC | AGE_RRD_CODE | AGE_RRD_DRIBBLE |
      AGE_RRD_RUNT | AGE_RRD_OFLOW | AGE_RRD_TRUNC)) != 0)
   return;
 }

 for (count = 0; count < nsegs; count++,
     AGE_DESC_INC(rx_cons, AGE_RX_RING_CNT)) {
  rxd = &sc->age_cdata.age_rxdesc[rx_cons];
  mp = rxd->rx_m;

  if (age_newbuf(sc, rxd) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);

   if (sc->age_cdata.age_rxhead != ((void*)0))
    m_freem(sc->age_cdata.age_rxhead);
   break;
  }






  mp->m_len = AGE_RX_BUF_SIZE;


  if (sc->age_cdata.age_rxhead == ((void*)0)) {
   sc->age_cdata.age_rxhead = mp;
   sc->age_cdata.age_rxtail = mp;
  } else {
   mp->m_flags &= ~M_PKTHDR;
   sc->age_cdata.age_rxprev_tail =
       sc->age_cdata.age_rxtail;
   sc->age_cdata.age_rxtail->m_next = mp;
   sc->age_cdata.age_rxtail = mp;
  }

  if (count == nsegs - 1) {

   m = sc->age_cdata.age_rxhead;
   m->m_flags |= M_PKTHDR;




   m->m_pkthdr.len = sc->age_cdata.age_rxlen -
       ETHER_CRC_LEN;
   if (nsegs > 1) {

    mp->m_len = sc->age_cdata.age_rxlen -
        ((nsegs - 1) * AGE_RX_BUF_SIZE);

    if (mp->m_len <= ETHER_CRC_LEN) {
     sc->age_cdata.age_rxtail =
         sc->age_cdata.age_rxprev_tail;
     sc->age_cdata.age_rxtail->m_len -=
         (ETHER_CRC_LEN - mp->m_len);
     sc->age_cdata.age_rxtail->m_next = ((void*)0);
     m_freem(mp);
    } else {
     mp->m_len -= ETHER_CRC_LEN;
    }
   } else
    m->m_len = m->m_pkthdr.len;
   m->m_pkthdr.rcvif = ifp;
   if ((ifp->if_capenable & IFCAP_RXCSUM) != 0 &&
       (status & AGE_RRD_IPV4) != 0) {
    if ((status & AGE_RRD_IPCSUM_NOK) == 0)
     m->m_pkthdr.csum_flags |=
         CSUM_IP_CHECKED | CSUM_IP_VALID;
    if ((status & (AGE_RRD_TCP | AGE_RRD_UDP)) &&
        (status & AGE_RRD_TCP_UDPCSUM_NOK) == 0) {
     m->m_pkthdr.csum_flags |=
         CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
     m->m_pkthdr.csum_data = 0xffff;
    }





   }


   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
       (status & AGE_RRD_VLAN) != 0) {
    vtag = AGE_RX_VLAN(le32toh(rxrd->vtags));
    m->m_pkthdr.ether_vtag = AGE_RX_VLAN_TAG(vtag);
    m->m_flags |= M_VLANTAG;
   }

   m = age_fixup_rx(ifp, m);
   if (m != ((void*)0))

   {

   AGE_UNLOCK(sc);
   (*ifp->if_input)(ifp, m);
   AGE_LOCK(sc);
   }
  }
 }


 AGE_RXCHAIN_RESET(sc);
}
