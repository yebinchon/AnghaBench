
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int sli4_t ;
typedef int sli4_queue_t ;
struct TYPE_9__ {int os; TYPE_3__** hw_cq; int * cq; int cq_count; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int cq_list; int * queue; TYPE_1__* hw; } ;
typedef TYPE_2__ hw_eq_t ;
struct TYPE_11__ {size_t instance; size_t entry_count; TYPE_2__* eq; int q_list; int * queue; int type; } ;
typedef TYPE_3__ hw_cq_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI_MAX_CQ_SET_COUNT ;
 int SLI_QTYPE_CQ ;
 int hw_q_t ;
 int link ;
 int ocs_free (int ,TYPE_3__*,int) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_log_err (int *,char*) ;
 TYPE_3__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_cq_alloc_set (int *,int **,size_t,size_t,int **) ;

uint32_t
hw_new_cq_set(hw_eq_t *eqs[], hw_cq_t *cqs[], uint32_t num_cqs, uint32_t entry_count)
{
 uint32_t i;
 ocs_hw_t *hw = eqs[0]->hw;
 sli4_t *sli4 = &hw->sli;
 hw_cq_t *cq = ((void*)0);
 sli4_queue_t *qs[SLI_MAX_CQ_SET_COUNT], *assocs[SLI_MAX_CQ_SET_COUNT];


 for (i = 0; i < num_cqs; i++) {
  cqs[i] = ((void*)0);
 }

 for (i = 0; i < num_cqs; i++) {
  cq = ocs_malloc(hw->os, sizeof(*cq), OCS_M_ZERO | OCS_M_NOWAIT);
  if (cq == ((void*)0))
   goto error;

  cqs[i] = cq;
  cq->eq = eqs[i];
  cq->type = SLI_QTYPE_CQ;
  cq->instance = hw->cq_count++;
  cq->entry_count = entry_count;
  cq->queue = &hw->cq[cq->instance];
  qs[i] = cq->queue;
  assocs[i] = eqs[i]->queue;
  ocs_list_init(&cq->q_list, hw_q_t, link);
 }

 if (sli_cq_alloc_set(sli4, qs, num_cqs, entry_count, assocs)) {
  ocs_log_err(((void*)0), "Failed to create CQ Set. \n");
  goto error;
 }

 for (i = 0; i < num_cqs; i++) {
  hw->hw_cq[cqs[i]->instance] = cqs[i];
  ocs_list_add_tail(&cqs[i]->eq->cq_list, cqs[i]);
 }

 return 0;

error:
 for (i = 0; i < num_cqs; i++) {
  if (cqs[i]) {
   ocs_free(hw->os, cqs[i], sizeof(*cqs[i]));
   cqs[i] = ((void*)0);
  }
 }
 return -1;
}
