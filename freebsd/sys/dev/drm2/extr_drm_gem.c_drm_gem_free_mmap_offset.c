
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_hash_item {int key; } ;
struct drm_gem_object {int on_map; struct drm_hash_item map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int idxunr; int offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;


 int drm_ht_remove_item (int *,struct drm_hash_item*) ;
 int free_unr (int ,int ) ;

void
drm_gem_free_mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct drm_gem_mm *mm = dev->mm_private;
 struct drm_hash_item *list = &obj->map_list;

 if (!obj->on_map)
  return;

 drm_ht_remove_item(&mm->offset_hash, list);
 free_unr(mm->idxunr, list->key);
 obj->on_map = 0;
}
