
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_pool {uintptr_t mtx_pool_shift; uintptr_t mtx_pool_mask; struct mtx* mtx_pool_ary; } ;
struct mtx {int dummy; } ;


 uintptr_t HASH_MULTIPLIER ;
 int KASSERT (int ,char*) ;

struct mtx *
mtx_pool_find(struct mtx_pool *pool, void *ptr)
{
 int p;

 KASSERT(pool != ((void*)0), ("_mtx_pool_find(): null pool"));




 p = ((HASH_MULTIPLIER * (uintptr_t)ptr) >> pool->mtx_pool_shift) &
     pool->mtx_pool_mask;
 return (&pool->mtx_pool_ary[p]);
}
