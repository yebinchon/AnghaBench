
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rl_rx_buf_paddr; int * rl_tx_tag; int ** rl_tx_dmamap; int * rl_rx_tag; int * rl_rx_buf; int * rl_rx_buf_ptr; int rl_rx_dmamap; } ;
struct rl_softc {int * rl_parent_tag; TYPE_1__ rl_cdata; } ;


 int RL_TX_LIST_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
rl_dma_free(struct rl_softc *sc)
{
 int i;


 if (sc->rl_cdata.rl_rx_tag != ((void*)0)) {
  if (sc->rl_cdata.rl_rx_buf_paddr != 0)
   bus_dmamap_unload(sc->rl_cdata.rl_rx_tag,
       sc->rl_cdata.rl_rx_dmamap);
  if (sc->rl_cdata.rl_rx_buf_ptr != ((void*)0))
   bus_dmamem_free(sc->rl_cdata.rl_rx_tag,
       sc->rl_cdata.rl_rx_buf_ptr,
       sc->rl_cdata.rl_rx_dmamap);
  sc->rl_cdata.rl_rx_buf_ptr = ((void*)0);
  sc->rl_cdata.rl_rx_buf = ((void*)0);
  sc->rl_cdata.rl_rx_buf_paddr = 0;
  bus_dma_tag_destroy(sc->rl_cdata.rl_rx_tag);
  sc->rl_cdata.rl_tx_tag = ((void*)0);
 }


 if (sc->rl_cdata.rl_tx_tag != ((void*)0)) {
  for (i = 0; i < RL_TX_LIST_CNT; i++) {
   if (sc->rl_cdata.rl_tx_dmamap[i] != ((void*)0)) {
    bus_dmamap_destroy(
        sc->rl_cdata.rl_tx_tag,
        sc->rl_cdata.rl_tx_dmamap[i]);
    sc->rl_cdata.rl_tx_dmamap[i] = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->rl_cdata.rl_tx_tag);
  sc->rl_cdata.rl_tx_tag = ((void*)0);
 }

 if (sc->rl_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->rl_parent_tag);
  sc->rl_parent_tag = ((void*)0);
 }
}
