
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ttm_buffer_object {int list_kref; } ;


 int atomic_fetchadd_int (int *,int) ;
 int panic (char*) ;
 int ttm_bo_release_list (struct ttm_buffer_object*) ;

void ttm_bo_list_ref_sub(struct ttm_buffer_object *bo, int count,
    bool never_free)
{
 u_int old;

 old = atomic_fetchadd_int(&bo->list_kref, -count);
 if (old <= count) {
  if (never_free)
   panic("ttm_bo_ref_buf");
  ttm_bo_release_list(bo);
 }
}
