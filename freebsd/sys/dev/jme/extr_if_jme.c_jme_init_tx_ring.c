
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_txdesc {scalar_t__ tx_ndesc; int * tx_desc; int * tx_m; } ;
struct TYPE_2__ {int jme_tx_ring_map; int jme_tx_ring_tag; struct jme_txdesc* jme_txdesc; scalar_t__ jme_tx_cnt; scalar_t__ jme_tx_cons; scalar_t__ jme_tx_prod; } ;
struct jme_ring_data {int * jme_tx_ring; } ;
struct jme_softc {TYPE_1__ jme_cdata; struct jme_ring_data jme_rdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int JME_TX_RING_CNT ;
 int JME_TX_RING_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int *,int ) ;

__attribute__((used)) static void
jme_init_tx_ring(struct jme_softc *sc)
{
 struct jme_ring_data *rd;
 struct jme_txdesc *txd;
 int i;

 sc->jme_cdata.jme_tx_prod = 0;
 sc->jme_cdata.jme_tx_cons = 0;
 sc->jme_cdata.jme_tx_cnt = 0;

 rd = &sc->jme_rdata;
 bzero(rd->jme_tx_ring, JME_TX_RING_SIZE);
 for (i = 0; i < JME_TX_RING_CNT; i++) {
  txd = &sc->jme_cdata.jme_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_desc = &rd->jme_tx_ring[i];
  txd->tx_ndesc = 0;
 }

 bus_dmamap_sync(sc->jme_cdata.jme_tx_ring_tag,
     sc->jme_cdata.jme_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
