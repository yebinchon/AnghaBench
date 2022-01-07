
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int bfe_rx_map; int bfe_rx_tag; struct bfe_rx_data* bfe_rx_ring; int bfe_rx_list; scalar_t__ bfe_rx_cons; scalar_t__ bfe_rx_prod; } ;
struct bfe_rx_data {scalar_t__ bfe_ctrl; int * bfe_mbuf; } ;
struct bfe_desc {int dummy; } ;


 int BFE_DMARX_PTR ;
 int BFE_RX_LIST_CNT ;
 int BFE_RX_LIST_SIZE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int ENOBUFS ;
 scalar_t__ bfe_list_newbuf (struct bfe_softc*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
bfe_list_rx_init(struct bfe_softc *sc)
{
 struct bfe_rx_data *rd;
 int i;

 sc->bfe_rx_prod = sc->bfe_rx_cons = 0;
 bzero(sc->bfe_rx_list, BFE_RX_LIST_SIZE);
 for (i = 0; i < BFE_RX_LIST_CNT; i++) {
  rd = &sc->bfe_rx_ring[i];
  rd->bfe_mbuf = ((void*)0);
  rd->bfe_ctrl = 0;
  if (bfe_list_newbuf(sc, i) != 0)
   return (ENOBUFS);
 }

 bus_dmamap_sync(sc->bfe_rx_tag, sc->bfe_rx_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, BFE_DMARX_PTR, (i * sizeof(struct bfe_desc)));

 return (0);
}
