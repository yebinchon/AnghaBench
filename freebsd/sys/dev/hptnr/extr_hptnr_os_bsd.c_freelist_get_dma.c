
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freelist {int dma; } ;
typedef int BUS_ADDRESS ;


 int HPT_ASSERT (int ) ;
 void* freelist_get (struct freelist*) ;

void *freelist_get_dma(struct freelist *list, BUS_ADDRESS *busaddr)
{
    void *result;
    HPT_ASSERT(list->dma);
    result = freelist_get(list);
    if (result)
        *busaddr = *(BUS_ADDRESS *)((void **)result+1);
    return result;
}
