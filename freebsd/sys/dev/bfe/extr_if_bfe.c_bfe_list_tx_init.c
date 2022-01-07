
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfe_softc {int bfe_tx_map; int bfe_tx_tag; TYPE_1__* bfe_tx_ring; int bfe_tx_list; scalar_t__ bfe_tx_cons; scalar_t__ bfe_tx_prod; scalar_t__ bfe_tx_cnt; } ;
struct TYPE_2__ {int * bfe_mbuf; } ;


 int BFE_TX_LIST_CNT ;
 int BFE_TX_LIST_SIZE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
bfe_list_tx_init(struct bfe_softc *sc)
{
 int i;

 sc->bfe_tx_cnt = sc->bfe_tx_prod = sc->bfe_tx_cons = 0;
 bzero(sc->bfe_tx_list, BFE_TX_LIST_SIZE);
 for (i = 0; i < BFE_TX_LIST_CNT; i++)
  sc->bfe_tx_ring[i].bfe_mbuf = ((void*)0);

 bus_dmamap_sync(sc->bfe_tx_tag, sc->bfe_tx_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
