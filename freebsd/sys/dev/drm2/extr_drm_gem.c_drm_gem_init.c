
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_mm {int idxunr; int offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; int object_names; } ;


 int DRM_ERROR (char*) ;
 int DRM_GEM_MAX_IDX ;
 int DRM_MEM_DRIVER ;
 int ENOMEM ;
 int M_NOWAIT ;
 int drm_gem_names_init (int *) ;
 scalar_t__ drm_ht_create (int *,int) ;
 int free (struct drm_gem_mm*,int ) ;
 struct drm_gem_mm* malloc (int,int ,int ) ;
 int new_unrhdr (int ,int ,int *) ;

int
drm_gem_init(struct drm_device *dev)
{
 struct drm_gem_mm *mm;

 drm_gem_names_init(&dev->object_names);

 mm = malloc(sizeof(*mm), DRM_MEM_DRIVER, M_NOWAIT);
 if (!mm) {
  DRM_ERROR("out of memory\n");
  return -ENOMEM;
 }

 dev->mm_private = mm;

 if (drm_ht_create(&mm->offset_hash, 19)) {
  free(mm, DRM_MEM_DRIVER);
  return -ENOMEM;
 }

 mm->idxunr = new_unrhdr(0, DRM_GEM_MAX_IDX, ((void*)0));

 return 0;
}
