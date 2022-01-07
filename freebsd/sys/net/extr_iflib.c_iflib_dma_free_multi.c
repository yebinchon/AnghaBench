
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iflib_dma_info_t ;


 int iflib_dma_free (int ) ;

void
iflib_dma_free_multi(iflib_dma_info_t *dmalist, int count)
{
 int i;
 iflib_dma_info_t *dmaiter = dmalist;

 for (i = 0; i < count; i++, dmaiter++)
  iflib_dma_free(*dmaiter);
}
