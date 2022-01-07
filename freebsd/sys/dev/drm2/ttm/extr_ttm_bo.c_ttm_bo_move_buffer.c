
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_placement {int dummy; } ;
struct TYPE_4__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {int num_pages; int size; scalar_t__ mm_node; TYPE_2__ bus; int page_alignment; } ;
struct TYPE_3__ {int page_alignment; } ;
struct ttm_buffer_object {int num_pages; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int fence_lock; } ;


 int MPASS (int ) ;
 int PAGE_SHIFT ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ttm_bo_handle_move_mem (struct ttm_buffer_object*,struct ttm_mem_reg*,int,int,int) ;
 int ttm_bo_is_reserved (struct ttm_buffer_object*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;

__attribute__((used)) static
int ttm_bo_move_buffer(struct ttm_buffer_object *bo,
   struct ttm_placement *placement,
   bool interruptible,
   bool no_wait_gpu)
{
 int ret = 0;
 struct ttm_mem_reg mem;
 struct ttm_bo_device *bdev = bo->bdev;

 MPASS(ttm_bo_is_reserved(bo));






 mtx_lock(&bdev->fence_lock);
 ret = ttm_bo_wait(bo, 0, interruptible, no_wait_gpu);
 mtx_unlock(&bdev->fence_lock);
 if (ret)
  return ret;
 mem.num_pages = bo->num_pages;
 mem.size = mem.num_pages << PAGE_SHIFT;
 mem.page_alignment = bo->mem.page_alignment;
 mem.bus.io_reserved_vm = 0;
 mem.bus.io_reserved_count = 0;



 ret = ttm_bo_mem_space(bo, placement, &mem,
          interruptible, no_wait_gpu);
 if (ret)
  goto out_unlock;
 ret = ttm_bo_handle_move_mem(bo, &mem, 0,
         interruptible, no_wait_gpu);
out_unlock:
 if (ret && mem.mm_node)
  ttm_bo_mem_put(bo, &mem);
 return ret;
}
