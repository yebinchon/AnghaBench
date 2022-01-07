
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vr_rx_ring_map; int vr_rx_ring_tag; struct vr_rxdesc* vr_rxdesc; scalar_t__ vr_rx_cons; } ;
struct vr_ring_data {TYPE_2__* vr_rx_ring; } ;
struct vr_softc {TYPE_1__ vr_cdata; struct vr_ring_data vr_rdata; } ;
struct vr_rxdesc {TYPE_2__* desc; int * rx_m; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {int vr_nextphys; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int VR_ADDR_LO (int ) ;
 int VR_RX_RING_ADDR (struct vr_softc*,int) ;
 int VR_RX_RING_CNT ;
 int VR_RX_RING_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int ) ;
 int htole32 (int ) ;
 scalar_t__ vr_newbuf (struct vr_softc*,int) ;

__attribute__((used)) static int
vr_rx_ring_init(struct vr_softc *sc)
{
 struct vr_ring_data *rd;
 struct vr_rxdesc *rxd;
 bus_addr_t addr;
 int i;

 sc->vr_cdata.vr_rx_cons = 0;

 rd = &sc->vr_rdata;
 bzero(rd->vr_rx_ring, VR_RX_RING_SIZE);
 for (i = 0; i < VR_RX_RING_CNT; i++) {
  rxd = &sc->vr_cdata.vr_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->desc = &rd->vr_rx_ring[i];
  if (i == VR_RX_RING_CNT - 1)
   addr = VR_RX_RING_ADDR(sc, 0);
  else
   addr = VR_RX_RING_ADDR(sc, i + 1);
  rd->vr_rx_ring[i].vr_nextphys = htole32(VR_ADDR_LO(addr));
  if (vr_newbuf(sc, i) != 0)
   return (ENOBUFS);
 }

 bus_dmamap_sync(sc->vr_cdata.vr_rx_ring_tag,
     sc->vr_cdata.vr_rx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
