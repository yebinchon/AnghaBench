
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {scalar_t__ len; struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_3__ m_pkthdr; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_5__ {TYPE_1__* rb_rxdesc; } ;
struct hme_softc {TYPE_2__ sc_rb; int sc_dev; struct ifnet* sc_ifp; } ;
struct ether_header {int dummy; } ;
struct TYPE_4__ {struct mbuf* hrx_m; } ;


 int CTR1 (int ,char*,int) ;
 int HME_LOCK (struct hme_softc*) ;
 int HME_MAX_FRAMESIZE ;
 scalar_t__ HME_RXOFFS ;
 int HME_UNLOCK (struct hme_softc*) ;
 int HME_WHINE (int ,char*,int) ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int KTR_HME ;
 scalar_t__ hme_add_rxbuf (struct hme_softc*,int,int ) ;
 int hme_discard_rxbuf (struct hme_softc*,int) ;
 int hme_rxcksum (struct mbuf*,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
hme_read(struct hme_softc *sc, int ix, int len, u_int32_t flags)
{
 struct ifnet *ifp = sc->sc_ifp;
 struct mbuf *m;

 if (len <= sizeof(struct ether_header) ||
     len > HME_MAX_FRAMESIZE) {




  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  hme_discard_rxbuf(sc, ix);
  return;
 }

 m = sc->sc_rb.rb_rxdesc[ix].hrx_m;
 CTR1(KTR_HME, "hme_read: len %d", len);

 if (hme_add_rxbuf(sc, ix, 0) != 0) {





  if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
  hme_discard_rxbuf(sc, ix);
  return;
 }

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

 m->m_pkthdr.rcvif = ifp;
 m->m_pkthdr.len = m->m_len = len + HME_RXOFFS;
 m_adj(m, HME_RXOFFS);

 if (ifp->if_capenable & IFCAP_RXCSUM)
  hme_rxcksum(m, flags);

 HME_UNLOCK(sc);
 (*ifp->if_input)(ifp, m);
 HME_LOCK(sc);
}
