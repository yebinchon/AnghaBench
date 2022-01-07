
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int quirks; scalar_t__ paddr; int dmatag; int dmamap; scalar_t__ dmamem; int sdma_bbufsz; int bus; int sdma_boundary; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EFAULT ;
 int MAXPHYS ;
 int SDHCI_BLKSZ_SDMA_BNDRY_128K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_16K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_256K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_32K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_4K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_512K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_64K ;
 int SDHCI_BLKSZ_SDMA_BNDRY_8K ;
 int SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY ;
 int SDHCI_SDMA_BNDRY_TO_BBUFSZ (int ) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,scalar_t__,int ) ;
 int bus_get_dma_tag (int ) ;
 int sdhci_getaddr ;
 int slot_printf (struct sdhci_slot*,char*) ;

__attribute__((used)) static int
sdhci_dma_alloc(struct sdhci_slot *slot)
{
 int err;

 if (!(slot->quirks & SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY)) {
  if (MAXPHYS <= 1024 * 4)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_4K;
  else if (MAXPHYS <= 1024 * 8)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_8K;
  else if (MAXPHYS <= 1024 * 16)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_16K;
  else if (MAXPHYS <= 1024 * 32)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_32K;
  else if (MAXPHYS <= 1024 * 64)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_64K;
  else if (MAXPHYS <= 1024 * 128)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_128K;
  else if (MAXPHYS <= 1024 * 256)
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_256K;
  else
   slot->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_512K;
 }
 slot->sdma_bbufsz = SDHCI_SDMA_BNDRY_TO_BBUFSZ(slot->sdma_boundary);
 err = bus_dma_tag_create(bus_get_dma_tag(slot->bus), slot->sdma_bbufsz,
     0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     slot->sdma_bbufsz, 1, slot->sdma_bbufsz, BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0), &slot->dmatag);
 if (err != 0) {
  slot_printf(slot, "Can't create DMA tag for SDMA\n");
  return (err);
 }

 err = bus_dmamem_alloc(slot->dmatag, (void **)&slot->dmamem,
     BUS_DMA_NOWAIT, &slot->dmamap);
 if (err != 0) {
  slot_printf(slot, "Can't alloc DMA memory for SDMA\n");
  bus_dma_tag_destroy(slot->dmatag);
  return (err);
 }

 err = bus_dmamap_load(slot->dmatag, slot->dmamap,
     (void *)slot->dmamem, slot->sdma_bbufsz, sdhci_getaddr,
     &slot->paddr, 0);
 if (err != 0 || slot->paddr == 0) {
  slot_printf(slot, "Can't load DMA memory for SDMA\n");
  bus_dmamem_free(slot->dmatag, slot->dmamem, slot->dmamap);
  bus_dma_tag_destroy(slot->dmatag);
  if (err)
   return (err);
  else
   return (EFAULT);
 }

 return (0);
}
