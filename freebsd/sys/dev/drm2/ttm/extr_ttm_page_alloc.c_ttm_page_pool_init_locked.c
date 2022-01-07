
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_page_pool {int fill_lock; int ttm_page_alloc_flags; char* name; scalar_t__ nfrees; scalar_t__ npages; int list; int lock; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void ttm_page_pool_init_locked(struct ttm_page_pool *pool, int flags,
          char *name)
{
 mtx_init(&pool->lock, "ttmpool", ((void*)0), MTX_DEF);
 pool->fill_lock = 0;
 TAILQ_INIT(&pool->list);
 pool->npages = pool->nfrees = 0;
 pool->ttm_page_alloc_flags = flags;
 pool->name = name;
}
