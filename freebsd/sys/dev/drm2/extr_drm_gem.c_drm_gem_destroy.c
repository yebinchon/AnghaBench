
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_mm {int idxunr; int offset_hash; } ;
struct drm_device {int object_names; struct drm_gem_mm* mm_private; } ;


 int DRM_MEM_DRIVER ;
 int delete_unrhdr (int ) ;
 int drm_gem_names_fini (int *) ;
 int drm_ht_remove (int *) ;
 int free (struct drm_gem_mm*,int ) ;

void
drm_gem_destroy(struct drm_device *dev)
{
 struct drm_gem_mm *mm = dev->mm_private;

 dev->mm_private = ((void*)0);
 drm_ht_remove(&mm->offset_hash);
 delete_unrhdr(mm->idxunr);
 free(mm, DRM_MEM_DRIVER);
 drm_gem_names_fini(&dev->object_names);
}
