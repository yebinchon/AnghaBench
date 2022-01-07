
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_pool {int mtx_pool_size; int * mtx_pool_ary; } ;


 int M_MTXPOOL ;
 int free (struct mtx_pool*,int ) ;
 int mtx_destroy (int *) ;

void
mtx_pool_destroy(struct mtx_pool **poolp)
{
 int i;
 struct mtx_pool *pool = *poolp;

 for (i = pool->mtx_pool_size - 1; i >= 0; --i)
  mtx_destroy(&pool->mtx_pool_ary[i]);
 free(pool, M_MTXPOOL);
 *poolp = ((void*)0);
}
