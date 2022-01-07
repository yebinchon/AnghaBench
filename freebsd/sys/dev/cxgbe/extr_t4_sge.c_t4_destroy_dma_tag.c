
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {scalar_t__ dmat; } ;


 int bus_dma_tag_destroy (scalar_t__) ;

int
t4_destroy_dma_tag(struct adapter *sc)
{
 if (sc->dmat)
  bus_dma_tag_destroy(sc->dmat);

 return (0);
}
