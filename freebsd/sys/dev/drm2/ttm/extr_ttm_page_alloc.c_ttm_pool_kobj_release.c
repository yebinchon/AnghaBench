
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_pool_manager {int dummy; } ;


 int M_TTM_POOLMGR ;
 int free (struct ttm_pool_manager*,int ) ;

__attribute__((used)) static void ttm_pool_kobj_release(struct ttm_pool_manager *m)
{

 free(m, M_TTM_POOLMGR);
}
