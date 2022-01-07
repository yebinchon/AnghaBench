
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int vte_rx_cons; int vte_rx_ring_map; int vte_rx_ring_tag; struct vte_rxdesc* vte_rxdesc; } ;
struct vte_softc {TYPE_3__ vte_cdata; struct ifnet* vte_ifp; } ;
struct vte_rxdesc {TYPE_1__* rx_desc; struct mbuf* rx_m; } ;
struct TYPE_5__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_4__ {void* drst; void* drlen; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int ETHER_CRC_LEN ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int VTE_DESC_INC (int,int) ;
 int VTE_DRST_RX_OK ;
 int VTE_DRST_RX_OWN ;
 int VTE_LOCK (struct vte_softc*) ;
 int VTE_MRDCR ;
 int VTE_MRDCR_RX_PAUSE_THRESH_SHIFT ;
 int VTE_RX_LEN (int) ;
 int VTE_RX_RING_CNT ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 void* htole16 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le16toh (void*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int vte_fixup_rx (struct ifnet*,struct mbuf*) ;
 scalar_t__ vte_newbuf (struct vte_softc*,struct vte_rxdesc*) ;

__attribute__((used)) static void
vte_rxeof(struct vte_softc *sc)
{
 struct ifnet *ifp;
 struct vte_rxdesc *rxd;
 struct mbuf *m;
 uint16_t status, total_len;
 int cons, prog;

 bus_dmamap_sync(sc->vte_cdata.vte_rx_ring_tag,
     sc->vte_cdata.vte_rx_ring_map, BUS_DMASYNC_POSTREAD |
     BUS_DMASYNC_POSTWRITE);
 cons = sc->vte_cdata.vte_rx_cons;
 ifp = sc->vte_ifp;
 for (prog = 0; (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0; prog++,
     VTE_DESC_INC(cons, VTE_RX_RING_CNT)) {
  rxd = &sc->vte_cdata.vte_rxdesc[cons];
  status = le16toh(rxd->rx_desc->drst);
  if ((status & VTE_DRST_RX_OWN) != 0)
   break;
  total_len = VTE_RX_LEN(le16toh(rxd->rx_desc->drlen));
  m = rxd->rx_m;
  if ((status & VTE_DRST_RX_OK) == 0) {

   rxd->rx_desc->drlen =
       htole16(MCLBYTES - sizeof(uint32_t));
   rxd->rx_desc->drst = htole16(VTE_DRST_RX_OWN);
   continue;
  }
  if (vte_newbuf(sc, rxd) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   rxd->rx_desc->drlen =
       htole16(MCLBYTES - sizeof(uint32_t));
   rxd->rx_desc->drst = htole16(VTE_DRST_RX_OWN);
   continue;
  }




  m->m_pkthdr.len = m->m_len = total_len - ETHER_CRC_LEN;
  m->m_pkthdr.rcvif = ifp;

  vte_fixup_rx(ifp, m);

  VTE_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  VTE_LOCK(sc);
 }

 if (prog > 0) {

  sc->vte_cdata.vte_rx_cons = cons;




  bus_dmamap_sync(sc->vte_cdata.vte_rx_ring_tag,
      sc->vte_cdata.vte_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
}
