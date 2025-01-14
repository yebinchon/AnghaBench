
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct freelist {int dma; void* count; void* reserved_count; scalar_t__ head; void* size; void* alignment; struct freelist* next; } ;
struct TYPE_4__ {TYPE_1__* vbus_ext; } ;
struct TYPE_3__ {scalar_t__ ext_type; struct freelist* freelist_dma_head; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef TYPE_2__* PHBA ;
typedef void* HPT_UINT ;


 scalar_t__ EXT_TYPE_VBUS ;

void freelist_reserve_dma(struct freelist *list, void *osext, HPT_UINT size, HPT_UINT alignment, HPT_UINT count)
{
    PVBUS_EXT vbus_ext = osext;

    if (vbus_ext->ext_type!=EXT_TYPE_VBUS)
        vbus_ext = ((PHBA)osext)->vbus_ext;

    list->next = vbus_ext->freelist_dma_head;
    vbus_ext->freelist_dma_head = list;
    list->dma = 1;
    list->alignment = alignment;
    list->size = size;
    list->head = 0;



    list->count = count;
}
