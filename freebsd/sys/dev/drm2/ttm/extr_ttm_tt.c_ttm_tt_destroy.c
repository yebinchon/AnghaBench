
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_tt {scalar_t__ state; int page_flags; TYPE_1__* func; int * swap_storage; TYPE_3__* bdev; int * pages; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;
struct TYPE_4__ {int (* destroy ) (struct ttm_tt*) ;} ;


 int TTM_PAGE_FLAG_PERSISTENT_SWAP ;
 scalar_t__ likely (int ) ;
 int stub1 (struct ttm_tt*) ;
 int stub2 (struct ttm_tt*) ;
 scalar_t__ tt_bound ;
 int ttm_tt_unbind (struct ttm_tt*) ;
 scalar_t__ unlikely (int ) ;
 int vm_object_deallocate (int *) ;

void ttm_tt_destroy(struct ttm_tt *ttm)
{
 if (unlikely(ttm == ((void*)0)))
  return;

 if (ttm->state == tt_bound) {
  ttm_tt_unbind(ttm);
 }

 if (likely(ttm->pages != ((void*)0))) {
  ttm->bdev->driver->ttm_tt_unpopulate(ttm);
 }

 if (!(ttm->page_flags & TTM_PAGE_FLAG_PERSISTENT_SWAP) &&
     ttm->swap_storage)
  vm_object_deallocate(ttm->swap_storage);

 ttm->swap_storage = ((void*)0);
 ttm->func->destroy(ttm);
}
