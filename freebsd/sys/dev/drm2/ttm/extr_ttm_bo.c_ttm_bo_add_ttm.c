
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_buffer_object {int type; int num_pages; int sg; TYPE_2__* ttm; int mutex; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int dummy_read_page; } ;
struct ttm_bo_device {TYPE_1__* driver; scalar_t__ need_dma32; } ;
struct TYPE_5__ {int sg; } ;
struct TYPE_4__ {TYPE_2__* (* ttm_tt_create ) (struct ttm_bo_device*,int,int,int ) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int TTM_ASSERT_LOCKED (int *) ;
 int TTM_PAGE_FLAG_DMA32 ;
 int TTM_PAGE_FLAG_SG ;
 int TTM_PAGE_FLAG_ZERO_ALLOC ;
 int printf (char*) ;
 TYPE_2__* stub1 (struct ttm_bo_device*,int,int,int ) ;
 TYPE_2__* stub2 (struct ttm_bo_device*,int,int,int ) ;



 int unlikely (int ) ;

__attribute__((used)) static int ttm_bo_add_ttm(struct ttm_buffer_object *bo, bool zero_alloc)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_global *glob = bo->glob;
 int ret = 0;
 uint32_t page_flags = 0;

 TTM_ASSERT_LOCKED(&bo->mutex);
 bo->ttm = ((void*)0);

 if (bdev->need_dma32)
  page_flags |= TTM_PAGE_FLAG_DMA32;

 switch (bo->type) {
 case 130:
  if (zero_alloc)
   page_flags |= TTM_PAGE_FLAG_ZERO_ALLOC;
 case 129:
  bo->ttm = bdev->driver->ttm_tt_create(bdev, bo->num_pages << PAGE_SHIFT,
            page_flags, glob->dummy_read_page);
  if (unlikely(bo->ttm == ((void*)0)))
   ret = -ENOMEM;
  break;
 case 128:
  bo->ttm = bdev->driver->ttm_tt_create(bdev, bo->num_pages << PAGE_SHIFT,
            page_flags | TTM_PAGE_FLAG_SG,
            glob->dummy_read_page);
  if (unlikely(bo->ttm == ((void*)0))) {
   ret = -ENOMEM;
   break;
  }
  bo->ttm->sg = bo->sg;
  break;
 default:
  printf("[TTM] Illegal buffer object type\n");
  ret = -EINVAL;
  break;
 }

 return ret;
}
