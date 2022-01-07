
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {void* sync_obj; int priv_flags; struct ttm_bo_device* bdev; } ;
struct ttm_bo_driver {int (* sync_obj_wait ) (void*,int,int) ;int (* sync_obj_unref ) (void**) ;void* (* sync_obj_ref ) (void*) ;scalar_t__ (* sync_obj_signaled ) (void*) ;} ;
struct ttm_bo_device {int fence_lock; struct ttm_bo_driver* driver; } ;


 int EBUSY ;
 int TTM_BO_PRIV_FLAG_MOVING ;
 int clear_bit (int ,int *) ;
 scalar_t__ likely (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (void*) ;
 int stub2 (void**) ;
 void* stub3 (void*) ;
 int stub4 (void*,int,int) ;
 int stub5 (void**) ;
 int stub6 (void**) ;
 int stub7 (void**) ;
 int stub8 (void**) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_wait(struct ttm_buffer_object *bo,
  bool lazy, bool interruptible, bool no_wait)
{
 struct ttm_bo_driver *driver = bo->bdev->driver;
 struct ttm_bo_device *bdev = bo->bdev;
 void *sync_obj;
 int ret = 0;

 if (likely(bo->sync_obj == ((void*)0)))
  return 0;

 while (bo->sync_obj) {

  if (driver->sync_obj_signaled(bo->sync_obj)) {
   void *tmp_obj = bo->sync_obj;
   bo->sync_obj = ((void*)0);
   clear_bit(TTM_BO_PRIV_FLAG_MOVING, &bo->priv_flags);
   mtx_unlock(&bdev->fence_lock);
   driver->sync_obj_unref(&tmp_obj);
   mtx_lock(&bdev->fence_lock);
   continue;
  }

  if (no_wait)
   return -EBUSY;

  sync_obj = driver->sync_obj_ref(bo->sync_obj);
  mtx_unlock(&bdev->fence_lock);
  ret = driver->sync_obj_wait(sync_obj,
         lazy, interruptible);
  if (unlikely(ret != 0)) {
   driver->sync_obj_unref(&sync_obj);
   mtx_lock(&bdev->fence_lock);
   return ret;
  }
  mtx_lock(&bdev->fence_lock);
  if (likely(bo->sync_obj == sync_obj)) {
   void *tmp_obj = bo->sync_obj;
   bo->sync_obj = ((void*)0);
   clear_bit(TTM_BO_PRIV_FLAG_MOVING,
      &bo->priv_flags);
   mtx_unlock(&bdev->fence_lock);
   driver->sync_obj_unref(&sync_obj);
   driver->sync_obj_unref(&tmp_obj);
   mtx_lock(&bdev->fence_lock);
  } else {
   mtx_unlock(&bdev->fence_lock);
   driver->sync_obj_unref(&sync_obj);
   mtx_lock(&bdev->fence_lock);
  }
 }
 return 0;
}
