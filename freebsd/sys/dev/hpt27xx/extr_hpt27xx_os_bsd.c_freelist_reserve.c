
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct freelist {void* count; void* reserved_count; scalar_t__ head; void* size; scalar_t__ dma; struct freelist* next; } ;
struct TYPE_4__ {TYPE_1__* vbus_ext; } ;
struct TYPE_3__ {scalar_t__ ext_type; struct freelist* freelist_head; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef TYPE_2__* PHBA ;
typedef void* HPT_UINT ;


 scalar_t__ EXT_TYPE_VBUS ;

void freelist_reserve(struct freelist *list, void *osext, HPT_UINT size, HPT_UINT count)
{
    PVBUS_EXT vbus_ext = osext;

    if (vbus_ext->ext_type!=EXT_TYPE_VBUS)
        vbus_ext = ((PHBA)osext)->vbus_ext;

    list->next = vbus_ext->freelist_head;
    vbus_ext->freelist_head = list;
    list->dma = 0;
    list->size = size;
    list->head = 0;



    list->count = count;
}
