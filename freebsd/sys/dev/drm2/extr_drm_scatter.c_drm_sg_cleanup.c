
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sg_mem {scalar_t__ vaddr; struct drm_sg_mem* busaddr; int pages; } ;


 int DRM_MEM_DRIVER ;
 int DRM_MEM_SGLISTS ;
 int IDX_TO_OFF (int ) ;
 int free (struct drm_sg_mem*,int ) ;
 int kmem_free (scalar_t__,int ) ;

void drm_sg_cleanup(struct drm_sg_mem * entry)
{
 if (entry == ((void*)0))
  return;

 if (entry->vaddr != 0)
  kmem_free(entry->vaddr, IDX_TO_OFF(entry->pages));

 free(entry->busaddr, DRM_MEM_SGLISTS);
 free(entry, DRM_MEM_DRIVER);
}
