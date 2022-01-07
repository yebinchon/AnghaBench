
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freelist {void* head; int count; int dma; } ;
typedef int BUS_ADDRESS ;


 int HPT_ASSERT (int ) ;

void freelist_put_dma(struct freelist *list, void *p, BUS_ADDRESS busaddr)
{
    HPT_ASSERT(list->dma);
    list->count++;
    *(void **)p = list->head;
    *(BUS_ADDRESS *)((void **)p+1) = busaddr;
    list->head = p;
}
