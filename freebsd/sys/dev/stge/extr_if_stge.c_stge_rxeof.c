
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int stge_rx_cons; scalar_t__ stge_rxcycles; scalar_t__ stge_rxlen; int stge_rx_ring_map; int stge_rx_ring_tag; struct mbuf* stge_rxhead; struct mbuf* stge_rxtail; struct stge_rxdesc* stge_rxdesc; } ;
struct TYPE_6__ {TYPE_1__* stge_rx_ring; } ;
struct stge_softc {scalar_t__ sc_if_framesize; TYPE_4__ sc_cdata; TYPE_2__ sc_rdata; struct ifnet* sc_ifp; } ;
struct stge_rxdesc {struct mbuf* rx_m; } ;
struct TYPE_7__ {scalar_t__ len; int csum_flags; int csum_data; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; int m_flags; TYPE_3__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_5__ {int rfd_status; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 scalar_t__ ETHER_ALIGN ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IQDROPS ;
 scalar_t__ MCLBYTES ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 int RFD_FrameEnd ;
 int RFD_IPDetected ;
 int RFD_IPError ;
 int RFD_RFDDone ;
 int RFD_RxAlignmentError ;
 scalar_t__ RFD_RxDMAFrameLen (int) ;
 int RFD_RxFCSError ;
 int RFD_RxFIFOOverrun ;
 int RFD_RxLengthError ;
 int RFD_RxRuntFrame ;
 int RFD_RxStatus (int ) ;
 int RFD_TCI (int ) ;
 int RFD_TCPDetected ;
 int RFD_TCPError ;
 int RFD_UDPDetected ;
 int RFD_UDPError ;
 int RFD_VLANDetected ;
 int STGE_LOCK (struct stge_softc*) ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_RXCHAIN_RESET (struct stge_softc*) ;
 int STGE_RX_RING_CNT ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le64toh (int ) ;
 int m_freem (struct mbuf*) ;
 int stge_discard_rxbuf (struct stge_softc*,int) ;
 struct mbuf* stge_fixup_rx (struct stge_softc*,struct mbuf*) ;
 scalar_t__ stge_newbuf (struct stge_softc*,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
stge_rxeof(struct stge_softc *sc)
{
 struct ifnet *ifp;
 struct stge_rxdesc *rxd;
 struct mbuf *mp, *m;
 uint64_t status64;
 uint32_t status;
 int cons, prog, rx_npkts;

 STGE_LOCK_ASSERT(sc);

 rx_npkts = 0;
 ifp = sc->sc_ifp;

 bus_dmamap_sync(sc->sc_cdata.stge_rx_ring_tag,
     sc->sc_cdata.stge_rx_ring_map, BUS_DMASYNC_POSTREAD);

 prog = 0;
 for (cons = sc->sc_cdata.stge_rx_cons; prog < STGE_RX_RING_CNT;
     prog++, cons = (cons + 1) % STGE_RX_RING_CNT) {
  status64 = le64toh(sc->sc_rdata.stge_rx_ring[cons].rfd_status);
  status = RFD_RxStatus(status64);
  if ((status & RFD_RFDDone) == 0)
   break;







  prog++;
  rxd = &sc->sc_cdata.stge_rxdesc[cons];
  mp = rxd->rx_m;





  if ((status & RFD_FrameEnd) != 0 && (status &
      (RFD_RxFIFOOverrun | RFD_RxRuntFrame |
      RFD_RxAlignmentError | RFD_RxFCSError |
      RFD_RxLengthError)) != 0) {
   stge_discard_rxbuf(sc, cons);
   if (sc->sc_cdata.stge_rxhead != ((void*)0)) {
    m_freem(sc->sc_cdata.stge_rxhead);
    STGE_RXCHAIN_RESET(sc);
   }
   continue;
  }



  if (stge_newbuf(sc, cons) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   stge_discard_rxbuf(sc, cons);
   if (sc->sc_cdata.stge_rxhead != ((void*)0)) {
    m_freem(sc->sc_cdata.stge_rxhead);
    STGE_RXCHAIN_RESET(sc);
   }
   continue;
  }

  if ((status & RFD_FrameEnd) != 0)
   mp->m_len = RFD_RxDMAFrameLen(status) -
       sc->sc_cdata.stge_rxlen;
  sc->sc_cdata.stge_rxlen += mp->m_len;


  if (sc->sc_cdata.stge_rxhead == ((void*)0)) {
   sc->sc_cdata.stge_rxhead = mp;
   sc->sc_cdata.stge_rxtail = mp;
  } else {
   mp->m_flags &= ~M_PKTHDR;
   sc->sc_cdata.stge_rxtail->m_next = mp;
   sc->sc_cdata.stge_rxtail = mp;
  }

  if ((status & RFD_FrameEnd) != 0) {
   m = sc->sc_cdata.stge_rxhead;
   m->m_pkthdr.rcvif = ifp;
   m->m_pkthdr.len = sc->sc_cdata.stge_rxlen;

   if (m->m_pkthdr.len > sc->sc_if_framesize) {
    m_freem(m);
    STGE_RXCHAIN_RESET(sc);
    continue;
   }




   if ((ifp->if_capenable & IFCAP_RXCSUM) != 0) {
    if ((status & RFD_IPDetected) != 0) {
     m->m_pkthdr.csum_flags |=
      CSUM_IP_CHECKED;
     if ((status & RFD_IPError) == 0)
      m->m_pkthdr.csum_flags |=
          CSUM_IP_VALID;
    }
    if (((status & RFD_TCPDetected) != 0 &&
        (status & RFD_TCPError) == 0) ||
        ((status & RFD_UDPDetected) != 0 &&
        (status & RFD_UDPError) == 0)) {
     m->m_pkthdr.csum_flags |=
         (CSUM_DATA_VALID | CSUM_PSEUDO_HDR);
     m->m_pkthdr.csum_data = 0xffff;
    }
   }


   if (sc->sc_if_framesize > (MCLBYTES - ETHER_ALIGN)) {
    if ((m = stge_fixup_rx(sc, m)) == ((void*)0)) {
     STGE_RXCHAIN_RESET(sc);
     continue;
    }
   }


   if ((status & RFD_VLANDetected) != 0 &&
       (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0) {
    m->m_pkthdr.ether_vtag = RFD_TCI(status64);
    m->m_flags |= M_VLANTAG;
   }

   STGE_UNLOCK(sc);

   (*ifp->if_input)(ifp, m);
   STGE_LOCK(sc);
   rx_npkts++;

   STGE_RXCHAIN_RESET(sc);
  }
 }

 if (prog > 0) {

  sc->sc_cdata.stge_rx_cons = cons;
  bus_dmamap_sync(sc->sc_cdata.stge_rx_ring_tag,
      sc->sc_cdata.stge_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
 return (rx_npkts);
}
