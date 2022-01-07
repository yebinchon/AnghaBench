
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dmatag; int dmamap; int dmamem; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
sdhci_dma_free(struct sdhci_slot *slot)
{

 bus_dmamap_unload(slot->dmatag, slot->dmamap);
 bus_dmamem_free(slot->dmatag, slot->dmamem, slot->dmamap);
 bus_dma_tag_destroy(slot->dmatag);
}
