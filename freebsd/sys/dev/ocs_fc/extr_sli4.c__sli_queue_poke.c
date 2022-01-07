
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_5__ {int * virt; } ;
struct TYPE_4__ {int length; int size; TYPE_2__ dma; } ;
typedef TYPE_1__ sli4_queue_t ;
typedef int int32_t ;


 int OCS_DMASYNC_PREWRITE ;
 int ocs_dma_sync (TYPE_2__*,int ) ;
 int ocs_memcpy (int *,int *,int) ;

int32_t
_sli_queue_poke(sli4_t *sli4, sli4_queue_t *q, uint32_t index, uint8_t *entry)
{
 int32_t rc = 0;
 uint8_t *qe = q->dma.virt;

 if (index >= q->length) {
  return -1;
 }

 qe += index * q->size;

 if (entry) {
  ocs_memcpy(qe, entry, q->size);
 }

 ocs_dma_sync(&q->dma, OCS_DMASYNC_PREWRITE);

 return rc;
}
