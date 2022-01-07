
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ perf_wq_id_association; } ;
struct TYPE_10__ {int os; TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_12__ {int * virt; } ;
struct TYPE_11__ {int index; int size; int type; int n_posted; int length; TYPE_6__ dma; int id; } ;
typedef TYPE_3__ sli4_queue_t ;
typedef int int32_t ;


 int OCS_DEBUG_ENABLE_MQ_DUMP ;
 int OCS_DEBUG_ENABLE_WQ_DUMP ;
 int OCS_DMASYNC_PREWRITE ;


 int ocs_dma_sync (TYPE_6__*,int ) ;
 int ocs_dump32 (int ,int ,char*,int *,int) ;
 int ocs_memcpy (int *,int *,int) ;
 int sli_queue_doorbell (TYPE_2__*,TYPE_3__*) ;
 int sli_set_wq_id_association (int *,int ) ;

int32_t
_sli_queue_write(sli4_t *sli4, sli4_queue_t *q, uint8_t *entry)
{
 int32_t rc = 0;
 uint8_t *qe = q->dma.virt;
 uint32_t qindex;

 qindex = q->index;
 qe += q->index * q->size;

 if (entry) {
  if ((128 == q->type) && sli4->config.perf_wq_id_association) {
   sli_set_wq_id_association(entry, q->id);
  }
  ocs_memcpy(qe, entry, q->size);
  q->n_posted = 1;
 }

 ocs_dma_sync(&q->dma, OCS_DMASYNC_PREWRITE);

 rc = sli_queue_doorbell(sli4, q);

 q->index = (q->index + q->n_posted) & (q->length - 1);
 q->n_posted = 0;

 if (rc < 0) {

  return rc;
 } else if (rc > 0) {

  return -rc;
 } else {
  return qindex;
 }
}
