
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_pool {int mtx_pool_size; int mtx_pool_mask; int * mtx_pool_ary; scalar_t__ mtx_pool_next; scalar_t__ mtx_pool_shift; } ;


 scalar_t__ POINTER_BITS ;
 int mtx_init (int *,char const*,int *,int) ;

__attribute__((used)) static void
mtx_pool_initialize(struct mtx_pool *pool, const char *mtx_name, int pool_size,
    int opts)
{
 int i, maskbits;

 pool->mtx_pool_size = pool_size;
 pool->mtx_pool_mask = pool_size - 1;
 for (i = 1, maskbits = 0; (i & pool_size) == 0; i = i << 1)
  maskbits++;
 pool->mtx_pool_shift = POINTER_BITS - maskbits;
 pool->mtx_pool_next = 0;
 for (i = 0; i < pool_size; ++i)
  mtx_init(&pool->mtx_pool_ary[i], mtx_name, ((void*)0), opts);
}
