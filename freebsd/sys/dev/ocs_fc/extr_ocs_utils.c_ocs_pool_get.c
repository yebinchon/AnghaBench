
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pool_hdr_t ;
struct TYPE_3__ {int lock; scalar_t__ use_lock; int freelist; } ;
typedef TYPE_1__ ocs_pool_t ;


 int * ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

void *
ocs_pool_get(ocs_pool_t *pool)
{
 pool_hdr_t *h;
 void *item = ((void*)0);

 if (pool->use_lock) {
  ocs_lock(&pool->lock);
 }

 h = ocs_list_remove_head(&pool->freelist);

 if (h != ((void*)0)) {

  item = &h[1];
 }

 if (pool->use_lock) {
  ocs_unlock(&pool->lock);
 }
 return item;
}
