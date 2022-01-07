
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
typedef int drm_dma_handle_t ;


 int DRM_MEM_DMA ;
 int __drm_pci_free (struct drm_device*,int *) ;
 int free (int *,int ) ;

void drm_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)
{
 __drm_pci_free(dev, dmah);
 free(dmah, DRM_MEM_DMA);
}
