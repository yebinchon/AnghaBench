
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * parent_dmat; int * rx_dmat; int * rx_jumbo_dmat; int * tx_dmat; } ;


 int bus_dma_tag_destroy (int *) ;

int
t3_sge_free(struct adapter * sc)
{

 if (sc->tx_dmat != ((void*)0))
  bus_dma_tag_destroy(sc->tx_dmat);

 if (sc->rx_jumbo_dmat != ((void*)0))
  bus_dma_tag_destroy(sc->rx_jumbo_dmat);

 if (sc->rx_dmat != ((void*)0))
  bus_dma_tag_destroy(sc->rx_dmat);

 if (sc->parent_dmat != ((void*)0))
  bus_dma_tag_destroy(sc->parent_dmat);

 return (0);
}
