
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nge_txdesc {int * tx_m; } ;
struct TYPE_3__ {int nge_tx_ring_map; int nge_tx_ring_tag; struct nge_txdesc* nge_txdesc; scalar_t__ nge_tx_cnt; scalar_t__ nge_tx_cons; scalar_t__ nge_tx_prod; } ;
struct nge_ring_data {TYPE_2__* nge_tx_ring; } ;
struct nge_softc {TYPE_1__ nge_cdata; struct nge_ring_data nge_rdata; } ;
struct nge_desc {int dummy; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {int nge_next; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int NGE_ADDR_LO (int ) ;
 int NGE_TX_RING_ADDR (struct nge_softc*,int) ;
 int NGE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int) ;
 int htole32 (int ) ;

__attribute__((used)) static int
nge_list_tx_init(struct nge_softc *sc)
{
 struct nge_ring_data *rd;
 struct nge_txdesc *txd;
 bus_addr_t addr;
 int i;

 sc->nge_cdata.nge_tx_prod = 0;
 sc->nge_cdata.nge_tx_cons = 0;
 sc->nge_cdata.nge_tx_cnt = 0;

 rd = &sc->nge_rdata;
 bzero(rd->nge_tx_ring, sizeof(struct nge_desc) * NGE_TX_RING_CNT);
 for (i = 0; i < NGE_TX_RING_CNT; i++) {
  if (i == NGE_TX_RING_CNT - 1)
   addr = NGE_TX_RING_ADDR(sc, 0);
  else
   addr = NGE_TX_RING_ADDR(sc, i + 1);
  rd->nge_tx_ring[i].nge_next = htole32(NGE_ADDR_LO(addr));
  txd = &sc->nge_cdata.nge_txdesc[i];
  txd->tx_m = ((void*)0);
 }

 bus_dmamap_sync(sc->nge_cdata.nge_tx_ring_tag,
     sc->nge_cdata.nge_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
