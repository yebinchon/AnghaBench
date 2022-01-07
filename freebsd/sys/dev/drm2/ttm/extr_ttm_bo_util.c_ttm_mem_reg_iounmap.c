
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_2__ {int size; int * addr; } ;
struct ttm_mem_reg {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;


 int pmap_unmapdev (int ,int ) ;
 int ttm_mem_io_free (struct ttm_bo_device*,struct ttm_mem_reg*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

__attribute__((used)) static
void ttm_mem_reg_iounmap(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem,
    void *virtual)
{
 struct ttm_mem_type_manager *man;

 man = &bdev->man[mem->mem_type];

 if (virtual && mem->bus.addr == ((void*)0))
  pmap_unmapdev((vm_offset_t)virtual, mem->bus.size);
 (void) ttm_mem_io_lock(man, 0);
 ttm_mem_io_free(bdev, mem);
 ttm_mem_io_unlock(man);
}
