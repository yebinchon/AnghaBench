
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef int * vm_object_t ;
struct ttm_tt {scalar_t__ state; scalar_t__ caching_state; int num_pages; int page_flags; int * swap_storage; TYPE_2__* bdev; int ** pages; } ;
struct TYPE_6__ {int td_ucred; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;


 int ENOMEM ;
 int IDX_TO_OFF (int) ;
 int MPASS (int) ;
 int OBJT_SWAP ;
 int TTM_PAGE_FLAG_PERSISTENT_SWAP ;
 int TTM_PAGE_FLAG_SWAPPED ;
 int VM_ALLOC_NORMAL ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VM_PROT_DEFAULT ;
 TYPE_3__* curthread ;
 int pmap_copy_page (int *,int *) ;
 int printf (char*) ;
 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_cached ;
 scalar_t__ tt_unbound ;
 scalar_t__ tt_unpopulated ;
 scalar_t__ unlikely (int ) ;
 int vm_object_pip_add (int *,int) ;
 int vm_object_pip_wakeup (int *) ;
 int vm_page_dirty (int *) ;
 int * vm_page_grab (int *,int,int ) ;
 int vm_page_valid (int *) ;
 int vm_page_xunbusy (int *) ;
 int * vm_pager_allocate (int ,int *,int ,int ,int ,int ) ;

int ttm_tt_swapout(struct ttm_tt *ttm, vm_object_t persistent_swap_storage)
{
 vm_object_t obj;
 vm_page_t from_page, to_page;
 int i;

 MPASS(ttm->state == tt_unbound || ttm->state == tt_unpopulated);
 MPASS(ttm->caching_state == tt_cached);

 if (persistent_swap_storage == ((void*)0)) {
  obj = vm_pager_allocate(OBJT_SWAP, ((void*)0),
      IDX_TO_OFF(ttm->num_pages), VM_PROT_DEFAULT, 0,
      curthread->td_ucred);
  if (obj == ((void*)0)) {
   printf("[TTM] Failed allocating swap storage\n");
   return (-ENOMEM);
  }
 } else
  obj = persistent_swap_storage;

 VM_OBJECT_WLOCK(obj);
 vm_object_pip_add(obj, 1);
 for (i = 0; i < ttm->num_pages; ++i) {
  from_page = ttm->pages[i];
  if (unlikely(from_page == ((void*)0)))
   continue;
  to_page = vm_page_grab(obj, i, VM_ALLOC_NORMAL);
  pmap_copy_page(from_page, to_page);
  vm_page_valid(to_page);
  vm_page_dirty(to_page);
  vm_page_xunbusy(to_page);
 }
 vm_object_pip_wakeup(obj);
 VM_OBJECT_WUNLOCK(obj);

 ttm->bdev->driver->ttm_tt_unpopulate(ttm);
 ttm->swap_storage = obj;
 ttm->page_flags |= TTM_PAGE_FLAG_SWAPPED;
 if (persistent_swap_storage != ((void*)0))
  ttm->page_flags |= TTM_PAGE_FLAG_PERSISTENT_SWAP;
 return (0);
}
