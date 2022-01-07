
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_placement {scalar_t__ lpfn; scalar_t__ fpfn; int num_placement; int* placement; } ;
struct ttm_mem_reg {scalar_t__ start; scalar_t__ num_pages; int placement; scalar_t__ mm_node; } ;


 int TTM_PL_MASK_CACHING ;
 int TTM_PL_MASK_MEM ;

__attribute__((used)) static int ttm_bo_mem_compat(struct ttm_placement *placement,
        struct ttm_mem_reg *mem)
{
 int i;

 if (mem->mm_node && placement->lpfn != 0 &&
     (mem->start < placement->fpfn ||
      mem->start + mem->num_pages > placement->lpfn))
  return -1;

 for (i = 0; i < placement->num_placement; i++) {
  if ((placement->placement[i] & mem->placement &
   TTM_PL_MASK_CACHING) &&
   (placement->placement[i] & mem->placement &
   TTM_PL_MASK_MEM))
   return i;
 }
 return -1;
}
