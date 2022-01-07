
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_pool {int mtx_pool_next; int mtx_pool_mask; struct mtx* mtx_pool_ary; } ;
struct mtx {int dummy; } ;


 int KASSERT (int ,char*) ;

struct mtx *
mtx_pool_alloc(struct mtx_pool *pool)
{
 int i;

 KASSERT(pool != ((void*)0), ("mtx_pool_alloc(): null pool"));





 i = pool->mtx_pool_next;
 pool->mtx_pool_next = (i + 1) & pool->mtx_pool_mask;
 return (&pool->mtx_pool_ary[i]);
}
