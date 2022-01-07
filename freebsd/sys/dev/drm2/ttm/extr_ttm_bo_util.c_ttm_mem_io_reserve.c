
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int io_reserve_fastpath; } ;
struct TYPE_3__ {int io_reserved_count; } ;
struct ttm_mem_reg {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_bo_device {TYPE_2__* driver; struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int (* io_mem_reserve ) (struct ttm_bo_device*,struct ttm_mem_reg*) ;} ;


 int EAGAIN ;
 scalar_t__ likely (int ) ;
 int stub1 (struct ttm_bo_device*,struct ttm_mem_reg*) ;
 int stub2 (struct ttm_bo_device*,struct ttm_mem_reg*) ;
 int ttm_mem_io_evict (struct ttm_mem_type_manager*) ;

__attribute__((used)) static int ttm_mem_io_reserve(struct ttm_bo_device *bdev,
         struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];
 int ret = 0;

 if (!bdev->driver->io_mem_reserve)
  return 0;
 if (likely(man->io_reserve_fastpath))
  return bdev->driver->io_mem_reserve(bdev, mem);

 if (bdev->driver->io_mem_reserve &&
     mem->bus.io_reserved_count++ == 0) {
retry:
  ret = bdev->driver->io_mem_reserve(bdev, mem);
  if (ret == -EAGAIN) {
   ret = ttm_mem_io_evict(man);
   if (ret == 0)
    goto retry;
  }
 }
 return ret;
}
