
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vge_txdesc {int * tx_desc; int * tx_m; } ;
struct TYPE_2__ {int vge_tx_ring_map; int vge_tx_ring_tag; struct vge_txdesc* vge_txdesc; scalar_t__ vge_tx_cnt; scalar_t__ vge_tx_considx; scalar_t__ vge_tx_prodidx; } ;
struct vge_ring_data {int * vge_tx_ring; } ;
struct vge_softc {TYPE_1__ vge_cdata; struct vge_ring_data vge_rdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_TX_DESC_CNT ;
 int VGE_TX_LIST_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int *,int ) ;

__attribute__((used)) static int
vge_tx_list_init(struct vge_softc *sc)
{
 struct vge_ring_data *rd;
 struct vge_txdesc *txd;
 int i;

 VGE_LOCK_ASSERT(sc);

 sc->vge_cdata.vge_tx_prodidx = 0;
 sc->vge_cdata.vge_tx_considx = 0;
 sc->vge_cdata.vge_tx_cnt = 0;

 rd = &sc->vge_rdata;
 bzero(rd->vge_tx_ring, VGE_TX_LIST_SZ);
 for (i = 0; i < VGE_TX_DESC_CNT; i++) {
  txd = &sc->vge_cdata.vge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_desc = &rd->vge_tx_ring[i];
 }

 bus_dmamap_sync(sc->vge_cdata.vge_tx_ring_tag,
     sc->vge_cdata.vge_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
