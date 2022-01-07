
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dma_ring {int dr_ring_dmap; int dr_ring_descbase; int dr_ring_dtag; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
bwn_dma_free_ringmemory(struct bwn_dma_ring *dr)
{

 bus_dmamap_unload(dr->dr_ring_dtag, dr->dr_ring_dmap);
 bus_dmamem_free(dr->dr_ring_dtag, dr->dr_ring_descbase,
     dr->dr_ring_dmap);
}
