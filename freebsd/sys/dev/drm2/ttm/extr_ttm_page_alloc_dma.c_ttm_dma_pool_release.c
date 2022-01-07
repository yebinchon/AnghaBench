
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int type; } ;
struct device {int dummy; } ;


 int ttm_dma_free_pool (struct device*,int ) ;

__attribute__((used)) static void ttm_dma_pool_release(struct device *dev, void *res)
{
 struct dma_pool *pool = *(struct dma_pool **)res;

 if (pool)
  ttm_dma_free_pool(dev, pool->type);
}
