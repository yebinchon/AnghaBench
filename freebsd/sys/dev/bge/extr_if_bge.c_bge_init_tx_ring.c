
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bge_tx_ring_map; int bge_tx_ring_tag; } ;
struct TYPE_3__ {int bge_tx_ring; } ;
struct bge_softc {scalar_t__ bge_chiprev; scalar_t__ bge_tx_prodidx; TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; scalar_t__ bge_tx_saved_considx; scalar_t__ bge_txcnt; } ;


 scalar_t__ BGE_CHIPREV_5700_BX ;
 int BGE_MBX_TX_HOST_PROD0_LO ;
 int BGE_MBX_TX_NIC_PROD0_LO ;
 int BGE_TX_RING_SZ ;
 int BUS_DMASYNC_PREWRITE ;
 int bge_writembx (struct bge_softc*,int ,scalar_t__) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
bge_init_tx_ring(struct bge_softc *sc)
{
 sc->bge_txcnt = 0;
 sc->bge_tx_saved_considx = 0;

 bzero(sc->bge_ldata.bge_tx_ring, BGE_TX_RING_SZ);
 bus_dmamap_sync(sc->bge_cdata.bge_tx_ring_tag,
     sc->bge_cdata.bge_tx_ring_map, BUS_DMASYNC_PREWRITE);


 sc->bge_tx_prodidx = 0;
 bge_writembx(sc, BGE_MBX_TX_HOST_PROD0_LO, sc->bge_tx_prodidx);


 if (sc->bge_chiprev == BGE_CHIPREV_5700_BX)
  bge_writembx(sc, BGE_MBX_TX_HOST_PROD0_LO, sc->bge_tx_prodidx);


 bge_writembx(sc, BGE_MBX_TX_NIC_PROD0_LO, 0);

 if (sc->bge_chiprev == BGE_CHIPREV_5700_BX)
  bge_writembx(sc, BGE_MBX_TX_NIC_PROD0_LO, 0);

 return (0);
}
