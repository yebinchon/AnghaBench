
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ale_txdesc {int * tx_m; } ;
struct TYPE_2__ {int ale_tx_ring_map; int ale_tx_ring_tag; int ale_tx_cmb_map; int ale_tx_cmb_tag; scalar_t__* ale_tx_cmb; struct ale_txdesc* ale_txdesc; scalar_t__* ale_tx_ring; scalar_t__ ale_tx_cnt; scalar_t__ ale_tx_cons; scalar_t__ ale_tx_prod; } ;
struct ale_softc {TYPE_1__ ale_cdata; } ;


 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_TX_CMB_SZ ;
 int ALE_TX_RING_CNT ;
 int ALE_TX_RING_SZ ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (scalar_t__*,int ) ;

__attribute__((used)) static void
ale_init_tx_ring(struct ale_softc *sc)
{
 struct ale_txdesc *txd;
 int i;

 ALE_LOCK_ASSERT(sc);

 sc->ale_cdata.ale_tx_prod = 0;
 sc->ale_cdata.ale_tx_cons = 0;
 sc->ale_cdata.ale_tx_cnt = 0;

 bzero(sc->ale_cdata.ale_tx_ring, ALE_TX_RING_SZ);
 bzero(sc->ale_cdata.ale_tx_cmb, ALE_TX_CMB_SZ);
 for (i = 0; i < ALE_TX_RING_CNT; i++) {
  txd = &sc->ale_cdata.ale_txdesc[i];
  txd->tx_m = ((void*)0);
 }
 *sc->ale_cdata.ale_tx_cmb = 0;
 bus_dmamap_sync(sc->ale_cdata.ale_tx_cmb_tag,
     sc->ale_cdata.ale_tx_cmb_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->ale_cdata.ale_tx_ring_tag,
     sc->ale_cdata.ale_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
