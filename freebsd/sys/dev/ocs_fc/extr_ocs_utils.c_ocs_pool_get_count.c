
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lock; scalar_t__ use_lock; int a; } ;
typedef TYPE_1__ ocs_pool_t ;


 int ocs_array_get_count (int ) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

uint32_t
ocs_pool_get_count(ocs_pool_t *pool)
{
 uint32_t count;
 if (pool->use_lock) {
  ocs_lock(&pool->lock);
 }
 count = ocs_array_get_count(pool->a);
 if (pool->use_lock) {
  ocs_unlock(&pool->lock);
 }
 return count;
}
