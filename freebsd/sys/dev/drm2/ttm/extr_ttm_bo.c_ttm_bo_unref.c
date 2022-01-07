
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int kref; } ;


 scalar_t__ refcount_release (int *) ;
 int ttm_bo_release (struct ttm_buffer_object*) ;

void ttm_bo_unref(struct ttm_buffer_object **p_bo)
{
 struct ttm_buffer_object *bo = *p_bo;

 *p_bo = ((void*)0);
 if (refcount_release(&bo->kref))
  ttm_bo_release(bo);
}
