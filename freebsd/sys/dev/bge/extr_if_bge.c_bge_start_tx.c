
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bge_tx_ring_map; int bge_tx_ring_tag; } ;
struct bge_softc {scalar_t__ bge_chiprev; int bge_timer; int bge_tx_prodidx; TYPE_1__ bge_cdata; } ;


 scalar_t__ BGE_CHIPREV_5700_BX ;
 int BGE_MBX_TX_HOST_PROD0_LO ;
 int BGE_TX_TIMEOUT ;
 int BUS_DMASYNC_PREWRITE ;
 int bge_writembx (struct bge_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static void
bge_start_tx(struct bge_softc *sc, uint32_t prodidx)
{

 bus_dmamap_sync(sc->bge_cdata.bge_tx_ring_tag,
     sc->bge_cdata.bge_tx_ring_map, BUS_DMASYNC_PREWRITE);

 bge_writembx(sc, BGE_MBX_TX_HOST_PROD0_LO, prodidx);

 if (sc->bge_chiprev == BGE_CHIPREV_5700_BX)
  bge_writembx(sc, BGE_MBX_TX_HOST_PROD0_LO, prodidx);

 sc->bge_tx_prodidx = prodidx;


 sc->bge_timer = BGE_TX_TIMEOUT;
}
