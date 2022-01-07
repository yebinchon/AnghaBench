
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_global {int kobj_ref; } ;
struct drm_global_reference {struct ttm_bo_global* object; } ;


 scalar_t__ refcount_release (int *) ;
 int ttm_bo_global_kobj_release (struct ttm_bo_global*) ;

void ttm_bo_global_release(struct drm_global_reference *ref)
{
 struct ttm_bo_global *glob = ref->object;

 if (refcount_release(&glob->kobj_ref))
  ttm_bo_global_kobj_release(glob);
}
