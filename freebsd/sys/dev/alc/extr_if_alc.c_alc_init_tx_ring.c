
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alc_txdesc {int * tx_m; } ;
struct TYPE_2__ {int alc_tx_ring_map; int alc_tx_ring_tag; struct alc_txdesc* alc_txdesc; scalar_t__ alc_tx_cnt; scalar_t__ alc_tx_cons; scalar_t__ alc_tx_prod; } ;
struct alc_ring_data {int alc_tx_ring; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_TX_RING_CNT ;
 int ALC_TX_RING_SZ ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
alc_init_tx_ring(struct alc_softc *sc)
{
 struct alc_ring_data *rd;
 struct alc_txdesc *txd;
 int i;

 ALC_LOCK_ASSERT(sc);

 sc->alc_cdata.alc_tx_prod = 0;
 sc->alc_cdata.alc_tx_cons = 0;
 sc->alc_cdata.alc_tx_cnt = 0;

 rd = &sc->alc_rdata;
 bzero(rd->alc_tx_ring, ALC_TX_RING_SZ);
 for (i = 0; i < ALC_TX_RING_CNT; i++) {
  txd = &sc->alc_cdata.alc_txdesc[i];
  txd->tx_m = ((void*)0);
 }

 bus_dmamap_sync(sc->alc_cdata.alc_tx_ring_tag,
     sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_PREWRITE);
}
