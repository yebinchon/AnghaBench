
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct drm_device {int* pcirid; struct resource** pcir; int dev; } ;


 int DRM_ERROR (char*,int) ;
 int DRM_MAX_PCI_RESOURCE ;
 int PCIR_BAR (int) ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;

__attribute__((used)) static int drm_alloc_resource(struct drm_device *dev, int resource)
{
 struct resource *res;
 int rid;

 if (resource >= DRM_MAX_PCI_RESOURCE) {
  DRM_ERROR("Resource %d too large\n", resource);
  return 1;
 }

 if (dev->pcir[resource] != ((void*)0)) {
  return 0;
 }

 rid = PCIR_BAR(resource);
 res = bus_alloc_resource_any(dev->dev, SYS_RES_MEMORY, &rid,
     RF_SHAREABLE);
 if (res == ((void*)0)) {
  DRM_ERROR("Couldn't find resource 0x%x\n", resource);
  return 1;
 }

 if (dev->pcir[resource] == ((void*)0)) {
  dev->pcirid[resource] = rid;
  dev->pcir[resource] = res;
 }

 return 0;
}
