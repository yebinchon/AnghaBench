
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_2__ {size_t mem_type; } ;
struct ttm_buffer_object {int list_kref; int * vm_node; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int vm_lock; int addr_space_rb; struct ttm_mem_type_manager* man; } ;


 int RB_REMOVE (int ,int *,struct ttm_buffer_object*) ;
 int drm_mm_put_block (int *) ;
 scalar_t__ likely (int ) ;
 scalar_t__ refcount_release (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int ttm_bo_cleanup_refs_or_queue (struct ttm_buffer_object*) ;
 int ttm_bo_device_buffer_objects ;
 int ttm_bo_release_list (struct ttm_buffer_object*) ;
 int ttm_mem_io_free_vm (struct ttm_buffer_object*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

__attribute__((used)) static void ttm_bo_release(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[bo->mem.mem_type];

 rw_wlock(&bdev->vm_lock);
 if (likely(bo->vm_node != ((void*)0))) {
  RB_REMOVE(ttm_bo_device_buffer_objects,
      &bdev->addr_space_rb, bo);
  drm_mm_put_block(bo->vm_node);
  bo->vm_node = ((void*)0);
 }
 rw_wunlock(&bdev->vm_lock);
 ttm_mem_io_lock(man, 0);
 ttm_mem_io_free_vm(bo);
 ttm_mem_io_unlock(man);
 ttm_bo_cleanup_refs_or_queue(bo);
 if (refcount_release(&bo->list_kref))
  ttm_bo_release_list(bo);
}
