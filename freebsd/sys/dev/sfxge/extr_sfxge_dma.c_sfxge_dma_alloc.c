
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sfxge_softc {int dev; int parent_dma_tag; } ;
struct TYPE_3__ {scalar_t__ esm_addr; int esm_tag; int esm_map; int esm_size; void* esm_base; } ;
typedef TYPE_1__ efsys_mem_t ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int MIN (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int device_printf (int ,char*) ;
 int sfxge_dma_cb ;

int
sfxge_dma_alloc(struct sfxge_softc *sc, bus_size_t len, efsys_mem_t *esmp)
{
 void *vaddr;


 if (bus_dma_tag_create(sc->parent_dma_tag, PAGE_SIZE, 0,
     MIN(0x3FFFFFFFFFFFUL, BUS_SPACE_MAXADDR), BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), len, 1, len, 0, ((void*)0), ((void*)0), &esmp->esm_tag) != 0) {
  device_printf(sc->dev, "Couldn't allocate txq DMA tag\n");
  goto fail_tag_create;
 }


 if (bus_dmamem_alloc(esmp->esm_tag, (void **)&vaddr,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
     &esmp->esm_map) != 0) {
  device_printf(sc->dev, "Couldn't allocate DMA memory\n");
  goto fail_alloc;
 }


 if (bus_dmamap_load(esmp->esm_tag, esmp->esm_map, vaddr, len,
     sfxge_dma_cb, &esmp->esm_addr, 0) != 0) {
  device_printf(sc->dev, "Couldn't load DMA mapping\n");
  goto fail_load;
 }






 if (esmp->esm_addr == 0)
  goto fail_load_check;

 esmp->esm_base = vaddr;
 esmp->esm_size = len;

 return (0);

fail_load_check:
fail_load:
 bus_dmamem_free(esmp->esm_tag, vaddr, esmp->esm_map);
fail_alloc:
 bus_dma_tag_destroy(esmp->esm_tag);
fail_tag_create:
 return (ENOMEM);
}
