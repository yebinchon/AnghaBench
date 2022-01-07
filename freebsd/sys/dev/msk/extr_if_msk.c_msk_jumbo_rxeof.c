
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct msk_rxdesc {struct mbuf* rx_m; } ;
struct TYPE_4__ {int msk_rx_cons; int msk_rx_prod; struct msk_rxdesc* msk_jumbo_rxdesc; } ;
struct msk_if_softc {int msk_framesize; int msk_flags; TYPE_2__ msk_cdata; int msk_vtag; struct ifnet* msk_ifp; } ;
struct TYPE_3__ {int len; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int GMR_FS_ANY_ERR ;
 int GMR_FS_GOOD_FC ;
 int GMR_FS_RX_OK ;
 int GMR_FS_VLAN ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int MSK_FLAG_RAMBUF ;
 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 int MSK_JUMBO_RX_RING_CNT ;
 int MSK_RX_INC (int,int) ;
 int M_VLANTAG ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int msk_discard_jumbo_rxbuf (struct msk_if_softc*,int) ;
 int msk_fixup_rx (struct mbuf*) ;
 scalar_t__ msk_jumbo_newbuf (struct msk_if_softc*,int) ;
 int msk_rxcsum (struct msk_if_softc*,int,struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
msk_jumbo_rxeof(struct msk_if_softc *sc_if, uint32_t status, uint32_t control,
    int len)
{
 struct mbuf *m;
 struct ifnet *ifp;
 struct msk_rxdesc *jrxd;
 int cons, rxlen;

 ifp = sc_if->msk_ifp;

 MSK_IF_LOCK_ASSERT(sc_if);

 cons = sc_if->msk_cdata.msk_rx_cons;
 do {
  rxlen = status >> 16;
  if ((status & GMR_FS_VLAN) != 0 &&
      (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
   rxlen -= ETHER_VLAN_ENCAP_LEN;
  if (len > sc_if->msk_framesize ||
      ((status & GMR_FS_ANY_ERR) != 0) ||
      ((status & GMR_FS_RX_OK) == 0) || (rxlen != len)) {

   if ((status & GMR_FS_GOOD_FC) == 0)
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   msk_discard_jumbo_rxbuf(sc_if, cons);
   break;
  }




  jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[cons];

  m = jrxd->rx_m;
  if (msk_jumbo_newbuf(sc_if, cons) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);

   msk_discard_jumbo_rxbuf(sc_if, cons);
   break;
  }
  m->m_pkthdr.rcvif = ifp;
  m->m_pkthdr.len = m->m_len = len;

  if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) != 0)
   msk_fixup_rx(m);

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
   msk_rxcsum(sc_if, control, m);

  if ((status & GMR_FS_VLAN) != 0 &&
      (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0) {
   m->m_pkthdr.ether_vtag = sc_if->msk_vtag;
   m->m_flags |= M_VLANTAG;
  }
  MSK_IF_UNLOCK(sc_if);
  (*ifp->if_input)(ifp, m);
  MSK_IF_LOCK(sc_if);
 } while (0);

 MSK_RX_INC(sc_if->msk_cdata.msk_rx_cons, MSK_JUMBO_RX_RING_CNT);
 MSK_RX_INC(sc_if->msk_cdata.msk_rx_prod, MSK_JUMBO_RX_RING_CNT);
}
