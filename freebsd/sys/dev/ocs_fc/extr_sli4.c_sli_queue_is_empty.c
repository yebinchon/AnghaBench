
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sli4_t ;
struct TYPE_6__ {int * virt; } ;
struct TYPE_5__ {int index; int size; int lock; TYPE_4__ dma; } ;
typedef TYPE_1__ sli4_queue_t ;
typedef int int32_t ;


 int FALSE ;
 int OCS_DMASYNC_POSTREAD ;
 int TRUE ;
 int ocs_dma_sync (TYPE_4__*,int ) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;
 int sli_queue_entry_is_valid (TYPE_1__*,int *,int ) ;

int32_t
sli_queue_is_empty(sli4_t *sli4, sli4_queue_t *q)
{
 int32_t rc = TRUE;
 uint8_t *qe = q->dma.virt;

 ocs_lock(&q->lock);

 ocs_dma_sync(&q->dma, OCS_DMASYNC_POSTREAD);

 qe += q->index * q->size;

 rc = !sli_queue_entry_is_valid(q, qe, FALSE);

 ocs_unlock(&q->lock);

 return rc;
}
