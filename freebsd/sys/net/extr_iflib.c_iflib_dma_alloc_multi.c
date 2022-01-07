
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iflib_dma_info_t ;
typedef int if_ctx_t ;


 int iflib_dma_alloc (int ,int,int ,int) ;
 int iflib_dma_free_multi (int *,int) ;

int
iflib_dma_alloc_multi(if_ctx_t ctx, int *sizes, iflib_dma_info_t *dmalist, int mapflags, int count)
{
 int i, err;
 iflib_dma_info_t *dmaiter;

 dmaiter = dmalist;
 for (i = 0; i < count; i++, dmaiter++) {
  if ((err = iflib_dma_alloc(ctx, sizes[i], *dmaiter, mapflags)) != 0)
   break;
 }
 if (err)
  iflib_dma_free_multi(dmalist, i);
 return (err);
}
