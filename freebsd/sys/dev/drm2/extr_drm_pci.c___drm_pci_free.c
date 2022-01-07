
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_3__ {int tag; int map; int vaddr; } ;
typedef TYPE_1__ drm_dma_handle_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

void __drm_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)
{
 if (dmah == ((void*)0))
  return;

 bus_dmamap_unload(dmah->tag, dmah->map);
 bus_dmamem_free(dmah->tag, dmah->vaddr, dmah->map);
 bus_dma_tag_destroy(dmah->tag);
}
