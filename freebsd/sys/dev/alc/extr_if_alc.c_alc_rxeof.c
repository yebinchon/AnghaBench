
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rx_rdesc {int vtag; int rdinfo; int status; } ;
struct TYPE_4__ {scalar_t__ len; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_2__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {scalar_t__ alc_rxlen; struct mbuf* alc_rxtail; struct mbuf* alc_rxprev_tail; struct mbuf* alc_rxhead; struct alc_rxdesc* alc_rxdesc; } ;
struct alc_softc {int alc_buf_size; TYPE_1__ alc_cdata; struct ifnet* alc_ifp; } ;
struct alc_rxdesc {struct mbuf* rx_m; } ;


 int ALC_DESC_INC (int,int ) ;
 int ALC_LOCK (struct alc_softc*) ;
 int ALC_RXCHAIN_RESET (struct alc_softc*) ;
 int ALC_RX_RING_CNT ;
 int ALC_UNLOCK (struct alc_softc*) ;
 scalar_t__ ETHER_CRC_LEN ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IQDROPS ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 scalar_t__ RRD_BYTES (int) ;
 int RRD_ERR_ALIGN ;
 int RRD_ERR_CRC ;
 int RRD_ERR_LENGTH ;
 int RRD_ERR_RUNT ;
 int RRD_ERR_SUM ;
 int RRD_ERR_TRUNC ;
 int RRD_IPCSUM_NOK ;
 int RRD_RD_CNT (int) ;
 int RRD_RD_IDX (int) ;
 int RRD_TCP_UDPCSUM_NOK ;
 int RRD_VLAN (int) ;
 int RRD_VLAN_TAG ;
 struct mbuf* alc_fixup_rx (struct ifnet*,struct mbuf*) ;
 scalar_t__ alc_newbuf (struct alc_softc*,struct alc_rxdesc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int m_freem (struct mbuf*) ;
 int ntohs (int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
alc_rxeof(struct alc_softc *sc, struct rx_rdesc *rrd)
{
 struct alc_rxdesc *rxd;
 struct ifnet *ifp;
 struct mbuf *mp, *m;
 uint32_t rdinfo, status, vtag;
 int count, nsegs, rx_cons;

 ifp = sc->alc_ifp;
 status = le32toh(rrd->status);
 rdinfo = le32toh(rrd->rdinfo);
 rx_cons = RRD_RD_IDX(rdinfo);
 nsegs = RRD_RD_CNT(rdinfo);

 sc->alc_cdata.alc_rxlen = RRD_BYTES(status);
 if ((status & (RRD_ERR_SUM | RRD_ERR_LENGTH)) != 0) {
  status |= RRD_TCP_UDPCSUM_NOK | RRD_IPCSUM_NOK;
  if ((status & (RRD_ERR_CRC | RRD_ERR_ALIGN |
      RRD_ERR_TRUNC | RRD_ERR_RUNT)) != 0)
   return;
 }

 for (count = 0; count < nsegs; count++,
     ALC_DESC_INC(rx_cons, ALC_RX_RING_CNT)) {
  rxd = &sc->alc_cdata.alc_rxdesc[rx_cons];
  mp = rxd->rx_m;

  if (alc_newbuf(sc, rxd) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);

   if (sc->alc_cdata.alc_rxhead != ((void*)0))
    m_freem(sc->alc_cdata.alc_rxhead);
   break;
  }






  mp->m_len = sc->alc_buf_size;


  if (sc->alc_cdata.alc_rxhead == ((void*)0)) {
   sc->alc_cdata.alc_rxhead = mp;
   sc->alc_cdata.alc_rxtail = mp;
  } else {
   mp->m_flags &= ~M_PKTHDR;
   sc->alc_cdata.alc_rxprev_tail =
       sc->alc_cdata.alc_rxtail;
   sc->alc_cdata.alc_rxtail->m_next = mp;
   sc->alc_cdata.alc_rxtail = mp;
  }

  if (count == nsegs - 1) {

   m = sc->alc_cdata.alc_rxhead;
   m->m_flags |= M_PKTHDR;




   m->m_pkthdr.len =
       sc->alc_cdata.alc_rxlen - ETHER_CRC_LEN;
   if (nsegs > 1) {

    mp->m_len = sc->alc_cdata.alc_rxlen -
        (nsegs - 1) * sc->alc_buf_size;

    if (mp->m_len <= ETHER_CRC_LEN) {
     sc->alc_cdata.alc_rxtail =
         sc->alc_cdata.alc_rxprev_tail;
     sc->alc_cdata.alc_rxtail->m_len -=
         (ETHER_CRC_LEN - mp->m_len);
     sc->alc_cdata.alc_rxtail->m_next = ((void*)0);
     m_freem(mp);
    } else {
     mp->m_len -= ETHER_CRC_LEN;
    }
   } else
    m->m_len = m->m_pkthdr.len;
   m->m_pkthdr.rcvif = ifp;




   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
       (status & RRD_VLAN_TAG) != 0) {
    vtag = RRD_VLAN(le32toh(rrd->vtag));
    m->m_pkthdr.ether_vtag = ntohs(vtag);
    m->m_flags |= M_VLANTAG;
   }

   m = alc_fixup_rx(ifp, m);
   if (m != ((void*)0))

   {

   ALC_UNLOCK(sc);
   (*ifp->if_input)(ifp, m);
   ALC_LOCK(sc);
   }
  }
 }

 ALC_RXCHAIN_RESET(sc);
}
