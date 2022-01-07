
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
struct drm_gem_object {int on_map; TYPE_1__ map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int idxunr; int offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;


 int DRM_ERROR (char*) ;
 int alloc_unr (int ) ;
 int drm_ht_insert_item (int *,TYPE_1__*) ;
 int free_unr (int ,int ) ;

int
drm_gem_create_mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct drm_gem_mm *mm = dev->mm_private;
 int ret;

 if (obj->on_map)
  return 0;

 obj->map_list.key = alloc_unr(mm->idxunr);
 ret = drm_ht_insert_item(&mm->offset_hash, &obj->map_list);
 if (ret) {
  DRM_ERROR("failed to add to map hash\n");
  free_unr(mm->idxunr, obj->map_list.key);
  return ret;
 }
 obj->on_map = 1;

 return 0;
}
