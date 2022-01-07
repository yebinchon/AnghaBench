
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_buffer_object {int reserved; int mem; int * ttm; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* move_notify ) (struct ttm_buffer_object*,int *) ;} ;


 int atomic_set (int *,int ) ;
 int mb () ;
 int stub1 (struct ttm_buffer_object*,int *) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,int *) ;
 int ttm_tt_destroy (int *) ;
 int ttm_tt_unbind (int *) ;
 int wakeup (struct ttm_buffer_object**) ;

__attribute__((used)) static void ttm_bo_cleanup_memtype_use(struct ttm_buffer_object *bo)
{
 if (bo->bdev->driver->move_notify)
  bo->bdev->driver->move_notify(bo, ((void*)0));

 if (bo->ttm) {
  ttm_tt_unbind(bo->ttm);
  ttm_tt_destroy(bo->ttm);
  bo->ttm = ((void*)0);
 }
 ttm_bo_mem_put(bo, &bo->mem);

 atomic_set(&bo->reserved, 0);
 wakeup(&bo);
 mb();
}
