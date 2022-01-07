
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int os; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_11__ {int * virt; } ;
struct TYPE_8__ {int r_idx; } ;
struct TYPE_10__ {int type; int index; int size; int lock; int n_posted; int length; TYPE_7__ dma; TYPE_1__ u; } ;
typedef TYPE_3__ sli4_queue_t ;
typedef int int32_t ;


 int OCS_DEBUG_ENABLE_CQ_DUMP ;
 int OCS_DEBUG_ENABLE_EQ_DUMP ;
 int OCS_DEBUG_ENABLE_MQ_DUMP ;
 int OCS_DMASYNC_POSTREAD ;



 int TRUE ;
 int ocs_dma_sync (TYPE_7__*,int ) ;
 int ocs_dump32 (int ,int ,char*,int *,int) ;
 int ocs_lock (int *) ;
 int ocs_memcpy (int *,int *,int) ;
 int ocs_unlock (int *) ;
 int sli_queue_entry_is_valid (TYPE_3__*,int *,int ) ;

int32_t
sli_queue_read(sli4_t *sli4, sli4_queue_t *q, uint8_t *entry)
{
 int32_t rc = 0;
 uint8_t *qe = q->dma.virt;
 uint32_t *qindex = ((void*)0);

 if (128 == q->type) {
  qindex = &q->u.r_idx;
 } else {
  qindex = &q->index;
 }

 ocs_lock(&q->lock);

 ocs_dma_sync(&q->dma, OCS_DMASYNC_POSTREAD);

 qe += *qindex * q->size;

 if (!sli_queue_entry_is_valid(q, qe, TRUE)) {
  ocs_unlock(&q->lock);
  return -1;
 }

 if (entry) {
  ocs_memcpy(entry, qe, q->size);
 }

 switch (q->type) {
  case 129:
  case 130:
  case 128:
   *qindex = (*qindex + 1) & (q->length - 1);
   if (128 != q->type) {
    q->n_posted++;
   }
   break;
  default:

   break;
 }

 ocs_unlock(&q->lock);

 return rc;
}
