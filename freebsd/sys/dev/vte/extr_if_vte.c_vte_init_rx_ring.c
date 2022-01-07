
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vte_rx_ring_map; int vte_rx_ring_tag; struct vte_rx_desc* vte_rx_ring; scalar_t__ vte_rx_ring_paddr; struct vte_rxdesc* vte_rxdesc; scalar_t__ vte_rx_cons; } ;
struct vte_softc {TYPE_1__ vte_cdata; } ;
struct vte_rxdesc {struct vte_rx_desc* rx_desc; int * rx_m; } ;
struct vte_rx_desc {int drnp; } ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_RX_RING_CNT ;
 int VTE_RX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (struct vte_rx_desc*,int ) ;
 int htole32 (scalar_t__) ;
 scalar_t__ vte_newbuf (struct vte_softc*,struct vte_rxdesc*) ;

__attribute__((used)) static int
vte_init_rx_ring(struct vte_softc *sc)
{
 struct vte_rx_desc *desc;
 struct vte_rxdesc *rxd;
 bus_addr_t addr;
 int i;

 VTE_LOCK_ASSERT(sc);

 sc->vte_cdata.vte_rx_cons = 0;
 desc = sc->vte_cdata.vte_rx_ring;
 bzero(desc, VTE_RX_RING_SZ);
 for (i = 0; i < VTE_RX_RING_CNT; i++) {
  rxd = &sc->vte_cdata.vte_rxdesc[i];
  rxd->rx_m = ((void*)0);
  if (i != VTE_RX_RING_CNT - 1)
   addr = sc->vte_cdata.vte_rx_ring_paddr +
       sizeof(struct vte_rx_desc) * (i + 1);
  else
   addr = sc->vte_cdata.vte_rx_ring_paddr +
       sizeof(struct vte_rx_desc) * 0;
  desc = &sc->vte_cdata.vte_rx_ring[i];
  desc->drnp = htole32(addr);
  rxd->rx_desc = desc;
  if (vte_newbuf(sc, rxd) != 0)
   return (ENOBUFS);
 }

 bus_dmamap_sync(sc->vte_cdata.vte_rx_ring_tag,
     sc->vte_cdata.vte_rx_ring_map, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);

 return (0);
}
