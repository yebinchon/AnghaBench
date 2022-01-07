
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memdesc {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dmamap_callback_t ;
typedef int bus_dma_tag_t ;



__attribute__((used)) static void
nexus_dmamap_waitok(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct memdesc *mem, bus_dmamap_callback_t *callback, void *callback_arg)
{

}
