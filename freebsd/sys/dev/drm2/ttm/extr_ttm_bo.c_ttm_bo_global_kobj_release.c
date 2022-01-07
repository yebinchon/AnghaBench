
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_global {int dummy_read_page; int shrink; int mem_glob; } ;


 int ttm_mem_unregister_shrink (int ,int *) ;
 int vm_page_free (int ) ;

__attribute__((used)) static void ttm_bo_global_kobj_release(struct ttm_bo_global *glob)
{

 ttm_mem_unregister_shrink(glob->mem_glob, &glob->shrink);
 vm_page_free(glob->dummy_read_page);
}
