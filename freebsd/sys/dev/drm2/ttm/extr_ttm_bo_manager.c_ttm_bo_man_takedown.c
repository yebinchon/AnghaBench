
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {int dummy; } ;
struct ttm_range_manager {int lock; struct drm_mm mm; } ;
struct ttm_mem_type_manager {int * priv; } ;


 int EBUSY ;
 int M_TTM_RMAN ;
 scalar_t__ drm_mm_clean (struct drm_mm*) ;
 int drm_mm_takedown (struct drm_mm*) ;
 int free (struct ttm_range_manager*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int ttm_bo_man_takedown(struct ttm_mem_type_manager *man)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
 struct drm_mm *mm = &rman->mm;

 mtx_lock(&rman->lock);
 if (drm_mm_clean(mm)) {
  drm_mm_takedown(mm);
  mtx_unlock(&rman->lock);
  mtx_destroy(&rman->lock);
  free(rman, M_TTM_RMAN);
  man->priv = ((void*)0);
  return 0;
 }
 mtx_unlock(&rman->lock);
 return -EBUSY;
}
