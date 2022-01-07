
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freelist {scalar_t__ count; void* head; } ;


 int HPT_ASSERT (void*) ;

void *freelist_get(struct freelist *list)
{
    void * result;
    if (list->count) {
        HPT_ASSERT(list->head);
        result = list->head;
        list->head = *(void **)result;
        list->count--;
        return result;
    }
    return 0;
}
