
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int lru; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_device {struct ttm_bo_global* glob; struct ttm_mem_type_manager* man; } ;


 int list_empty (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int ttm_mem_evict_first (struct ttm_bo_device*,unsigned int,int,int) ;

__attribute__((used)) static int ttm_bo_force_list_clean(struct ttm_bo_device *bdev,
     unsigned mem_type, bool allow_errors)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 struct ttm_bo_global *glob = bdev->glob;
 int ret;





 mtx_lock(&glob->lru_lock);
 while (!list_empty(&man->lru)) {
  mtx_unlock(&glob->lru_lock);
  ret = ttm_mem_evict_first(bdev, mem_type, 0, 0);
  if (ret) {
   if (allow_errors) {
    return ret;
   } else {
    printf("[TTM] Cleanup eviction failed\n");
   }
  }
  mtx_lock(&glob->lru_lock);
 }
 mtx_unlock(&glob->lru_lock);
 return 0;
}
