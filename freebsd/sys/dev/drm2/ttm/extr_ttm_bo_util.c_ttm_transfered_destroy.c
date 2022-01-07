
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;


 int M_TTM_TRANSF_OBJ ;
 int free (struct ttm_buffer_object*,int ) ;

__attribute__((used)) static void ttm_transfered_destroy(struct ttm_buffer_object *bo)
{
 free(bo, M_TTM_TRANSF_OBJ);
}
