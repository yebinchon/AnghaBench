
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef size_t vm_pindex_t ;
struct drm_sg_mem {int pages; scalar_t__ vaddr; struct drm_sg_mem* busaddr; } ;
struct drm_scatter_gather {scalar_t__ handle; int size; } ;
struct drm_device {struct drm_sg_mem* sg; } ;


 int DRIVER_SG ;
 int DRM_DEBUG (char*,...) ;
 int DRM_MEM_DRIVER ;
 int DRM_MEM_SGLISTS ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IDX_TO_OFF (size_t) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int atop (int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 scalar_t__ drm_vmalloc_dma (int ) ;
 int free (struct drm_sg_mem*,int ) ;
 void* malloc (int,int ,int) ;
 int round_page (int ) ;
 struct drm_sg_mem vtophys (scalar_t__) ;

int drm_sg_alloc(struct drm_device *dev, struct drm_scatter_gather * request)
{
 struct drm_sg_mem *entry;
 vm_size_t size;
 vm_pindex_t pindex;

 DRM_DEBUG("\n");

 if (!drm_core_check_feature(dev, DRIVER_SG))
  return -EINVAL;

 if (dev->sg)
  return -EINVAL;

 entry = malloc(sizeof(*entry), DRM_MEM_DRIVER, M_NOWAIT | M_ZERO);
 if (!entry)
  return -ENOMEM;

 DRM_DEBUG("request size=%ld\n", request->size);

 size = round_page(request->size);
 entry->pages = atop(size);
 entry->busaddr = malloc(entry->pages * sizeof(*entry->busaddr),
     DRM_MEM_SGLISTS, M_NOWAIT | M_ZERO);
 if (!entry->busaddr) {
  free(entry, DRM_MEM_DRIVER);
  return -ENOMEM;
 }

 entry->vaddr = drm_vmalloc_dma(size);
 if (entry->vaddr == 0) {
  free(entry->busaddr, DRM_MEM_DRIVER);
  free(entry, DRM_MEM_DRIVER);
  return -ENOMEM;
 }

 for (pindex = 0; pindex < entry->pages; pindex++) {
  entry->busaddr[pindex] =
      vtophys(entry->vaddr + IDX_TO_OFF(pindex));
 }

 request->handle = entry->vaddr;

 dev->sg = entry;

 DRM_DEBUG("allocated %ju pages @ 0x%08zx, contents=%08lx\n",
     entry->pages, entry->vaddr, *(unsigned long *)entry->vaddr);

 return 0;
}
