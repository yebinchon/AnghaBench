
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {unsigned long num_pages; TYPE_1__* vm_node; } ;
struct ttm_bo_device {int addr_space_rb; } ;
struct TYPE_2__ {unsigned long start; } ;


 struct ttm_buffer_object* RB_LEFT (struct ttm_buffer_object*,int ) ;
 struct ttm_buffer_object* RB_RIGHT (struct ttm_buffer_object*,int ) ;
 struct ttm_buffer_object* RB_ROOT (int *) ;
 scalar_t__ unlikely (int) ;
 int vm_rb ;

__attribute__((used)) static struct ttm_buffer_object *ttm_bo_vm_lookup_rb(struct ttm_bo_device *bdev,
           unsigned long page_start,
           unsigned long num_pages)
{
 unsigned long cur_offset;
 struct ttm_buffer_object *bo;
 struct ttm_buffer_object *best_bo = ((void*)0);

 bo = RB_ROOT(&bdev->addr_space_rb);
 while (bo != ((void*)0)) {
  cur_offset = bo->vm_node->start;
  if (page_start >= cur_offset) {
   best_bo = bo;
   if (page_start == cur_offset)
    break;
   bo = RB_RIGHT(bo, vm_rb);
  } else
   bo = RB_LEFT(bo, vm_rb);
 }

 if (unlikely(best_bo == ((void*)0)))
  return ((void*)0);

 if (unlikely((best_bo->vm_node->start + best_bo->num_pages) <
       (page_start + num_pages)))
  return ((void*)0);

 return best_bo;
}
