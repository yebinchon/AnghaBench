
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;


 int ttm_bo_release_mmap (struct ttm_buffer_object*) ;
 int ttm_mem_io_free_vm (struct ttm_buffer_object*) ;

void ttm_bo_unmap_virtual_locked(struct ttm_buffer_object *bo)
{

 ttm_bo_release_mmap(bo);
 ttm_mem_io_free_vm(bo);
}
