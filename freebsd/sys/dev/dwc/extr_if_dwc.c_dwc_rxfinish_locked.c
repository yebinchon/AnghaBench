
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_3__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct dwc_softc {int rx_idx; struct ifnet* ifp; TYPE_2__* rxbuf_map; int rxbuf_tag; TYPE_1__* rxdesc_ring; } ;
struct TYPE_5__ {struct mbuf* mbuf; int map; } ;
struct TYPE_4__ {int tdes0; } ;


 int BUS_DMASYNC_POSTREAD ;
 int DDESC_RDES0_FL_MASK ;
 int DDESC_RDES0_FL_SHIFT ;
 int DDESC_RDES0_OWN ;
 int DWC_LOCK (struct dwc_softc*) ;
 int DWC_UNLOCK (struct dwc_softc*) ;
 int ETHER_CRC_LEN ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 struct mbuf* dwc_alloc_mbufcl (struct dwc_softc*) ;
 int dwc_setup_rxbuf (struct dwc_softc*,int,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_adj (struct mbuf*,int ) ;
 int next_rxidx (struct dwc_softc*,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
dwc_rxfinish_locked(struct dwc_softc *sc)
{
 struct ifnet *ifp;
 struct mbuf *m0;
 struct mbuf *m;
 int error, idx, len;
 uint32_t rdes0;

 ifp = sc->ifp;

 for (;;) {
  idx = sc->rx_idx;

  rdes0 = sc->rxdesc_ring[idx].tdes0;
  if ((rdes0 & DDESC_RDES0_OWN) != 0)
   break;

  bus_dmamap_sync(sc->rxbuf_tag, sc->rxbuf_map[idx].map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->rxbuf_tag, sc->rxbuf_map[idx].map);

  len = (rdes0 >> DDESC_RDES0_FL_SHIFT) & DDESC_RDES0_FL_MASK;
  if (len != 0) {
   m = sc->rxbuf_map[idx].mbuf;
   m->m_pkthdr.rcvif = ifp;
   m->m_pkthdr.len = len;
   m->m_len = len;
   if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);


   m_adj(m, -ETHER_CRC_LEN);

   DWC_UNLOCK(sc);
   (*ifp->if_input)(ifp, m);
   DWC_LOCK(sc);
  } else {

  }

  if ((m0 = dwc_alloc_mbufcl(sc)) != ((void*)0)) {
   if ((error = dwc_setup_rxbuf(sc, idx, m0)) != 0) {




   }
  } else
   if_inc_counter(sc->ifp, IFCOUNTER_IQDROPS, 1);

  sc->rx_idx = next_rxidx(sc, sc->rx_idx);
 }
}
