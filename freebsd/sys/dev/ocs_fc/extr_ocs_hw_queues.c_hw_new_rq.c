
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int rq_default_buffer_size; } ;
struct TYPE_15__ {size_t rq_count; size_t* hw_rq_lookup; int os; TYPE_4__** hw_rq; int sli; TYPE_2__ config; TYPE_6__* rq; int hw_rq_count; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_sequence_t ;
struct TYPE_16__ {size_t instance; int entry_count; int * rq_tracker; int ulp; int data_entry_size; TYPE_6__* data; int hdr_entry_size; TYPE_6__* hdr; int type; TYPE_5__* cq; } ;
typedef TYPE_4__ hw_rq_t ;
struct TYPE_17__ {int q_list; int queue; TYPE_1__* eq; } ;
typedef TYPE_5__ hw_cq_t ;
struct TYPE_18__ {int id; } ;
struct TYPE_13__ {TYPE_3__* hw; } ;


 size_t ARRAY_SIZE (TYPE_6__*) ;
 int FALSE ;
 int OCS_HW_MAX_RQ_ENTRIES ;
 int OCS_HW_RQ_HEADER_SIZE ;
 int OCS_HW_RQ_NUM_HDR ;
 int OCS_MIN (int ,int) ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI_QTYPE_RQ ;
 int TRUE ;
 int ocs_free (int ,TYPE_4__*,int) ;
 int ocs_hw_assert (int) ;
 int ocs_hw_get (TYPE_3__*,int ,int *) ;
 int ocs_list_add_tail (int *,TYPE_4__*) ;
 int ocs_log_debug (int ,char*,size_t,int ,int,int ,int ) ;
 int ocs_log_err (int ,char*) ;
 void* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_fc_rq_alloc (int *,TYPE_6__*,int,int ,int ,int ,int ) ;

hw_rq_t*
hw_new_rq(hw_cq_t *cq, uint32_t entry_count, uint32_t ulp)
{
 ocs_hw_t *hw = cq->eq->hw;
 hw_rq_t *rq = ocs_malloc(hw->os, sizeof(*rq), OCS_M_ZERO | OCS_M_NOWAIT);
 uint32_t max_hw_rq;

 ocs_hw_get(hw, OCS_HW_MAX_RQ_ENTRIES, &max_hw_rq);


 if (rq != ((void*)0)) {
  rq->instance = hw->hw_rq_count++;
  rq->cq = cq;
  rq->type = SLI_QTYPE_RQ;
  rq->ulp = ulp;

  rq->entry_count = OCS_MIN(entry_count, OCS_MIN(max_hw_rq, OCS_HW_RQ_NUM_HDR));


  ocs_hw_assert(hw->rq_count < ARRAY_SIZE(hw->rq));
  rq->hdr = &hw->rq[hw->rq_count];
  rq->hdr_entry_size = OCS_HW_RQ_HEADER_SIZE;

  if (sli_fc_rq_alloc(&hw->sli, rq->hdr,
        rq->entry_count,
        rq->hdr_entry_size,
        cq->queue,
        ulp, TRUE)) {
   ocs_log_err(hw->os, "RQ allocation failure - header\n");
   ocs_free(hw->os, rq, sizeof(*rq));
   return ((void*)0);
  }
  hw->hw_rq_lookup[hw->rq_count] = rq->instance;
  hw->rq_count++;
  ocs_log_debug(hw->os, "create rq[%2d] id %3d len %4d hdr  size %4d ulp %d\n",
   rq->instance, rq->hdr->id, rq->entry_count, rq->hdr_entry_size, rq->ulp);


  ocs_hw_assert(hw->rq_count < ARRAY_SIZE(hw->rq));
  rq->data = &hw->rq[hw->rq_count];
  rq->data_entry_size = hw->config.rq_default_buffer_size;

  if (sli_fc_rq_alloc(&hw->sli, rq->data,
        rq->entry_count,
        rq->data_entry_size,
        cq->queue,
        ulp, FALSE)) {
   ocs_log_err(hw->os, "RQ allocation failure - first burst\n");
   ocs_free(hw->os, rq, sizeof(*rq));
   return ((void*)0);
  }
  hw->hw_rq_lookup[hw->rq_count] = rq->instance;
  hw->rq_count++;
  ocs_log_debug(hw->os, "create rq[%2d] id %3d len %4d data size %4d ulp %d\n", rq->instance,
   rq->data->id, rq->entry_count, rq->data_entry_size, rq->ulp);

  hw->hw_rq[rq->instance] = rq;
  ocs_list_add_tail(&cq->q_list, rq);

  rq->rq_tracker = ocs_malloc(hw->os, sizeof(ocs_hw_sequence_t*) *
         rq->entry_count, OCS_M_ZERO | OCS_M_NOWAIT);
  if (rq->rq_tracker == ((void*)0)) {
   ocs_log_err(hw->os, "RQ tracker buf allocation failure\n");
   return ((void*)0);
  }
 }
 return rq;
}
