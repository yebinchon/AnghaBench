
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_buffer_object {struct ttm_bo_global* glob; } ;
struct ttm_bo_global {int lru_lock; } ;


 scalar_t__ likely (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;
 int ttm_bo_list_ref_sub (struct ttm_buffer_object*,int,int) ;
 int ttm_bo_reserve_slowpath_nolru (struct ttm_buffer_object*,int,int ) ;

int ttm_bo_reserve_slowpath(struct ttm_buffer_object *bo,
       bool interruptible, uint32_t sequence)
{
 struct ttm_bo_global *glob = bo->glob;
 int put_count, ret;

 mtx_lock(&glob->lru_lock);
 ret = ttm_bo_reserve_slowpath_nolru(bo, interruptible, sequence);
 if (likely(!ret)) {
  put_count = ttm_bo_del_from_lru(bo);
  mtx_unlock(&glob->lru_lock);
  ttm_bo_list_ref_sub(bo, put_count, 1);
 } else
  mtx_unlock(&glob->lru_lock);
 return ret;
}
