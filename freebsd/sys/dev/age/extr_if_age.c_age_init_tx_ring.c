
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct age_txdesc {int * tx_m; int * tx_desc; } ;
struct TYPE_2__ {int age_tx_ring_map; int age_tx_ring_tag; struct age_txdesc* age_txdesc; scalar_t__ age_tx_cnt; scalar_t__ age_tx_cons; scalar_t__ age_tx_prod; } ;
struct age_ring_data {int * age_tx_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;


 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_TX_RING_CNT ;
 int AGE_TX_RING_SZ ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int *,int ) ;

__attribute__((used)) static void
age_init_tx_ring(struct age_softc *sc)
{
 struct age_ring_data *rd;
 struct age_txdesc *txd;
 int i;

 AGE_LOCK_ASSERT(sc);

 sc->age_cdata.age_tx_prod = 0;
 sc->age_cdata.age_tx_cons = 0;
 sc->age_cdata.age_tx_cnt = 0;

 rd = &sc->age_rdata;
 bzero(rd->age_tx_ring, AGE_TX_RING_SZ);
 for (i = 0; i < AGE_TX_RING_CNT; i++) {
  txd = &sc->age_cdata.age_txdesc[i];
  txd->tx_desc = &rd->age_tx_ring[i];
  txd->tx_m = ((void*)0);
 }

 bus_dmamap_sync(sc->age_cdata.age_tx_ring_tag,
     sc->age_cdata.age_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
