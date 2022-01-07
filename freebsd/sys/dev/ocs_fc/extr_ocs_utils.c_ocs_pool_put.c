
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pool_hdr_t ;
struct TYPE_3__ {int lock; scalar_t__ use_lock; int freelist; } ;
typedef TYPE_1__ ocs_pool_t ;


 int ocs_list_add_tail (int *,int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

void
ocs_pool_put(ocs_pool_t *pool, void *item)
{
 pool_hdr_t *h;

 if (pool->use_lock) {
  ocs_lock(&pool->lock);
 }




 h = &((pool_hdr_t*)item)[-1];

 ocs_list_add_tail(&pool->freelist, h);

 if (pool->use_lock) {
  ocs_unlock(&pool->lock);
 }

}
