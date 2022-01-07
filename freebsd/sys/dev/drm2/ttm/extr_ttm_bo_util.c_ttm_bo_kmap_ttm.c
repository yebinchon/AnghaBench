
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int vm_memattr_t ;
struct ttm_tt {scalar_t__ state; int * pages; TYPE_2__* bdev; } ;
struct ttm_mem_reg {int placement; } ;
struct ttm_buffer_object {struct ttm_tt* ttm; struct ttm_mem_reg mem; } ;
struct ttm_bo_kmap_obj {unsigned long num_pages; int * virtual; int bo_kmap_type; int sf; int page; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* ttm_tt_populate ) (struct ttm_tt*) ;} ;


 int ENOMEM ;
 int MPASS (int ) ;
 unsigned long PAGE_SIZE ;
 int TTM_PL_FLAG_CACHED ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ kva_alloc (unsigned long) ;
 int pmap_page_set_memattr (int ,int ) ;
 int pmap_qenter (int ,int *,unsigned long) ;
 int sf_buf_alloc (int ,int ) ;
 scalar_t__ sf_buf_kva (int ) ;
 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_unpopulated ;
 int ttm_bo_map_kmap ;
 int ttm_bo_map_vmap ;
 int ttm_io_prot (int) ;

__attribute__((used)) static int ttm_bo_kmap_ttm(struct ttm_buffer_object *bo,
      unsigned long start_page,
      unsigned long num_pages,
      struct ttm_bo_kmap_obj *map)
{
 struct ttm_mem_reg *mem = &bo->mem;
 vm_memattr_t prot;
 struct ttm_tt *ttm = bo->ttm;
 int i, ret;

 MPASS(ttm != ((void*)0));

 if (ttm->state == tt_unpopulated) {
  ret = ttm->bdev->driver->ttm_tt_populate(ttm);
  if (ret)
   return ret;
 }

 if (num_pages == 1 && (mem->placement & TTM_PL_FLAG_CACHED)) {





  map->bo_kmap_type = ttm_bo_map_kmap;
  map->page = ttm->pages[start_page];
  map->sf = sf_buf_alloc(map->page, 0);
  map->virtual = (void *)sf_buf_kva(map->sf);
 } else {




  prot = (mem->placement & TTM_PL_FLAG_CACHED) ?
   VM_MEMATTR_DEFAULT : ttm_io_prot(mem->placement);
  map->bo_kmap_type = ttm_bo_map_vmap;
  map->num_pages = num_pages;
  map->virtual = (void *)kva_alloc(num_pages * PAGE_SIZE);
  if (map->virtual != ((void*)0)) {
   for (i = 0; i < num_pages; i++) {

    pmap_page_set_memattr(ttm->pages[start_page +
        i], prot);
   }
   pmap_qenter((vm_offset_t)map->virtual,
       &ttm->pages[start_page], num_pages);
  }
 }
 return (!map->virtual) ? -ENOMEM : 0;
}
