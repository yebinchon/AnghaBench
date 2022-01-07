
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os; int lock; scalar_t__ use_lock; int * a; } ;
typedef TYPE_1__ ocs_pool_t ;


 int ocs_array_free (int *) ;
 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_lock_free (int *) ;

void
ocs_pool_free(ocs_pool_t *pool)
{
 if (pool != ((void*)0)) {
  if (pool->a != ((void*)0)) {
   ocs_array_free(pool->a);
  }
  if (pool->use_lock) {
   ocs_lock_free(&pool->lock);
  }
  ocs_free(pool->os, pool, sizeof(*pool));
 }
}
