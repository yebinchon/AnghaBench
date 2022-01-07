
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; int placement; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;


 int TTM_MEMTYPE_FLAG_CMA ;
 int TTM_MEMTYPE_FLAG_FIXED ;
 int TTM_PL_FLAG_CACHED ;
 size_t TTM_PL_SYSTEM ;

bool ttm_mem_reg_is_pci(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];

 if (!(man->flags & TTM_MEMTYPE_FLAG_FIXED)) {
  if (mem->mem_type == TTM_PL_SYSTEM)
   return 0;

  if (man->flags & TTM_MEMTYPE_FLAG_CMA)
   return 0;

  if (mem->placement & TTM_PL_FLAG_CACHED)
   return 0;
 }
 return 1;
}
