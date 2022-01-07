
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_dmatag; int sc_dmamap; int sc_slots; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int M_DBDMA ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int dbdma_stop (TYPE_1__*) ;
 int free (TYPE_1__*,int ) ;

int
dbdma_free_channel(dbdma_channel_t *chan)
{

 dbdma_stop(chan);

 bus_dmamem_free(chan->sc_dmatag, chan->sc_slots, chan->sc_dmamap);
 bus_dma_tag_destroy(chan->sc_dmatag);

 free(chan, M_DBDMA);

 return (0);
}
