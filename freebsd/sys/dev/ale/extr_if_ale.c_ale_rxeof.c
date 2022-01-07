
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rx_rs {int vtags; int flags; int length; int seqno; } ;
struct TYPE_4__ {int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {size_t ale_rx_curp; int ale_rx_seqno; struct ale_rx_page* ale_rx_page; } ;
struct ale_softc {TYPE_1__ ale_cdata; int ale_dev; struct ifnet* ale_ifp; } ;
struct ale_rx_page {int* cmb_addr; int cons; int page_addr; int page_map; int page_tag; int cmb_map; int cmb_tag; } ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_RD_CODE ;
 int ALE_RD_CRC ;
 int ALE_RD_DRIBBLE ;
 int ALE_RD_ERROR ;
 int ALE_RD_IPV4 ;
 int ALE_RD_OFLOW ;
 int ALE_RD_RUNT ;
 int ALE_RD_TRUNC ;
 int ALE_RD_VLAN ;
 int ALE_RX_BYTES (int) ;
 int ALE_RX_SEQNO (int) ;
 int ALE_RX_VLAN (int) ;
 int ALE_RX_VLAN_TAG (int) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int EAGAIN ;
 int EIO ;
 int ETHER_ALIGN ;
 int ETHER_CRC_LEN ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IQDROPS ;
 int M_VLANTAG ;
 int ale_rx_update_page (struct ale_softc*,struct ale_rx_page**,int,int*) ;
 int ale_rxcsum (struct ale_softc*,struct mbuf*,int) ;
 scalar_t__ bootverbose ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 struct mbuf* m_devget (char*,int,int ,struct ifnet*,int *) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
ale_rxeof(struct ale_softc *sc, int count)
{
 struct ale_rx_page *rx_page;
 struct rx_rs *rs;
 struct ifnet *ifp;
 struct mbuf *m;
 uint32_t length, prod, seqno, status, vtags;
 int prog;

 ifp = sc->ale_ifp;
 rx_page = &sc->ale_cdata.ale_rx_page[sc->ale_cdata.ale_rx_curp];
 bus_dmamap_sync(rx_page->cmb_tag, rx_page->cmb_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_sync(rx_page->page_tag, rx_page->page_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 prod = *rx_page->cmb_addr;
 for (prog = 0; prog < count; prog++) {
  if (rx_page->cons >= prod)
   break;
  rs = (struct rx_rs *)(rx_page->page_addr + rx_page->cons);
  seqno = ALE_RX_SEQNO(le32toh(rs->seqno));
  if (sc->ale_cdata.ale_rx_seqno != seqno) {
   if (bootverbose)
    device_printf(sc->ale_dev,
        "garbled seq: %u, expected: %u -- "
        "resetting!\n", seqno,
        sc->ale_cdata.ale_rx_seqno);
   return (EIO);
  }

  sc->ale_cdata.ale_rx_seqno++;
  length = ALE_RX_BYTES(le32toh(rs->length));
  status = le32toh(rs->flags);
  if ((status & ALE_RD_ERROR) != 0) {
   if ((status & (ALE_RD_CRC | ALE_RD_CODE |
       ALE_RD_DRIBBLE | ALE_RD_RUNT | ALE_RD_OFLOW |
       ALE_RD_TRUNC)) != 0) {
    ale_rx_update_page(sc, &rx_page, length, &prod);
    continue;
   }
  }
  m = m_devget((char *)(rs + 1), length - ETHER_CRC_LEN,
      ETHER_ALIGN, ifp, ((void*)0));
  if (m == ((void*)0)) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   ale_rx_update_page(sc, &rx_page, length, &prod);
   continue;
  }
  if ((ifp->if_capenable & IFCAP_RXCSUM) != 0 &&
      (status & ALE_RD_IPV4) != 0)
   ale_rxcsum(sc, m, status);
  if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
      (status & ALE_RD_VLAN) != 0) {
   vtags = ALE_RX_VLAN(le32toh(rs->vtags));
   m->m_pkthdr.ether_vtag = ALE_RX_VLAN_TAG(vtags);
   m->m_flags |= M_VLANTAG;
  }


  ALE_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  ALE_LOCK(sc);

  ale_rx_update_page(sc, &rx_page, length, &prod);
 }

 return (count > 0 ? 0 : EAGAIN);
}
