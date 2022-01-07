
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {int dev; int dma_lock; } ;
struct TYPE_6__ {int tag; int map; int vaddr; } ;
typedef TYPE_1__ drm_dma_handle_t ;
typedef int dma_addr_t ;


 int BUS_DMA_NOCACHE ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int DRM_ERROR (char*,...) ;
 int DRM_MEM_DMA ;
 int MA_NOTOWNED ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,size_t,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,size_t,int ,TYPE_1__*,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int drm_pci_busdma_callback ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ mtx_owned (int *) ;

drm_dma_handle_t *drm_pci_alloc(struct drm_device * dev, size_t size,
    size_t align, dma_addr_t maxaddr)
{
 drm_dma_handle_t *dmah;
 int ret;


 if ((align & (align - 1)) != 0) {
  DRM_ERROR("drm_pci_alloc with non-power-of-two alignment %d\n",
      (int)align);
  return ((void*)0);
 }

 dmah = malloc(sizeof(drm_dma_handle_t), DRM_MEM_DMA, M_ZERO | M_NOWAIT);
 if (dmah == ((void*)0))
  return ((void*)0);


 mtx_assert(&dev->dma_lock, MA_NOTOWNED);
 if (mtx_owned(&dev->dma_lock))
     DRM_ERROR("called while holding dma_lock\n");

 ret = bus_dma_tag_create(
     bus_get_dma_tag(dev->dev),
     align, 0,
     maxaddr, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     size, 1, size,
     0, ((void*)0), ((void*)0),
     &dmah->tag);
 if (ret != 0) {
  free(dmah, DRM_MEM_DMA);
  return ((void*)0);
 }

 ret = bus_dmamem_alloc(dmah->tag, &dmah->vaddr,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_NOCACHE, &dmah->map);
 if (ret != 0) {
  bus_dma_tag_destroy(dmah->tag);
  free(dmah, DRM_MEM_DMA);
  return ((void*)0);
 }

 ret = bus_dmamap_load(dmah->tag, dmah->map, dmah->vaddr, size,
     drm_pci_busdma_callback, dmah, BUS_DMA_NOWAIT);
 if (ret != 0) {
  bus_dmamem_free(dmah->tag, dmah->vaddr, dmah->map);
  bus_dma_tag_destroy(dmah->tag);
  free(dmah, DRM_MEM_DMA);
  return ((void*)0);
 }

 return dmah;
}
