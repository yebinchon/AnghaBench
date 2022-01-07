
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freelist {scalar_t__ dma; void* head; int count; } ;


 int HPT_ASSERT (int) ;

void freelist_put(struct freelist * list, void *p)
{
    HPT_ASSERT(list->dma==0);
    list->count++;
    *(void **)p = list->head;
    list->head = p;
}
