
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_page_pool {int dummy; } ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;


 unsigned int NUM_POOLS ;
 TYPE_1__* _manager ;
 unsigned int atomic_fetchadd_int (unsigned int*,int) ;
 int ttm_page_pool_free (struct ttm_page_pool*,unsigned int) ;
 int ttm_pool_get_num_unused_pages () ;

__attribute__((used)) static int ttm_pool_mm_shrink(void *arg)
{
 static unsigned int start_pool = 0;
 unsigned i;
 unsigned pool_offset = atomic_fetchadd_int(&start_pool, 1);
 struct ttm_page_pool *pool;
 int shrink_pages = 100;

 pool_offset = pool_offset % NUM_POOLS;

 for (i = 0; i < NUM_POOLS; ++i) {
  unsigned nr_free = shrink_pages;
  if (shrink_pages == 0)
   break;
  pool = &_manager->pools[(i + pool_offset)%NUM_POOLS];
  shrink_pages = ttm_page_pool_free(pool, nr_free);
 }

 return ttm_pool_get_num_unused_pages();
}
