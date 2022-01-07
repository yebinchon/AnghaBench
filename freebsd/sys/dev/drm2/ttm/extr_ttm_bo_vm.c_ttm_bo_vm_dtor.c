
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;


 int ttm_bo_unref (struct ttm_buffer_object**) ;

__attribute__((used)) static void
ttm_bo_vm_dtor(void *handle)
{
 struct ttm_buffer_object *bo = handle;

 ttm_bo_unref(&bo);
}
