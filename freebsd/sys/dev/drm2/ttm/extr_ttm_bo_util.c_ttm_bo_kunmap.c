
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {size_t mem_type; } ;
struct ttm_buffer_object {TYPE_2__ mem; TYPE_1__* bdev; } ;
struct ttm_bo_kmap_obj {int bo_kmap_type; int num_pages; int * sf; int * page; int * virtual; struct ttm_buffer_object* bo; int size; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;


 int MPASS (int ) ;
 int PAGE_SIZE ;
 int kva_free (int ,int) ;
 int pmap_qremove (int ,int) ;
 int pmap_unmapdev (int ,int ) ;
 int sf_buf_free (int *) ;




 int ttm_mem_io_free (TYPE_1__*,TYPE_2__*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

void ttm_bo_kunmap(struct ttm_bo_kmap_obj *map)
{
 struct ttm_buffer_object *bo = map->bo;
 struct ttm_mem_type_manager *man =
  &bo->bdev->man[bo->mem.mem_type];

 if (!map->virtual)
  return;
 switch (map->bo_kmap_type) {
 case 131:
  pmap_unmapdev((vm_offset_t)map->virtual, map->size);
  break;
 case 128:
  pmap_qremove((vm_offset_t)(map->virtual), map->num_pages);
  kva_free((vm_offset_t)map->virtual,
      map->num_pages * PAGE_SIZE);
  break;
 case 130:
  sf_buf_free(map->sf);
  break;
 case 129:
  break;
 default:
  MPASS(0);
 }
 (void) ttm_mem_io_lock(man, 0);
 ttm_mem_io_free(map->bo->bdev, &map->bo->mem);
 ttm_mem_io_unlock(man);
 map->virtual = ((void*)0);
 map->page = ((void*)0);
 map->sf = ((void*)0);
}
