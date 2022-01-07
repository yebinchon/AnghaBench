
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_13__ {scalar_t__ state; size_t wq_count; size_t rq_count; size_t hw_rq_count; size_t mq_count; size_t cq_count; size_t eq_count; int * eq; int sli; int * cq; int * mq; TYPE_2__** hw_rq; int * rq; int * wq; int io_lock; int io_wait_free; int io_free; int io_timed_wqe; int fcf_index_fcfi; int domains; int os; int cmd_head; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_state_e ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_reset_e ;
struct TYPE_14__ {size_t entry_count; int ** rq_tracker; } ;
typedef TYPE_2__ hw_rq_t ;




 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_STATE_ACTIVE ;
 scalar_t__ OCS_HW_STATE_QUEUES_ALLOCATED ;
 scalar_t__ OCS_HW_STATE_RESET_IN_PROGRESS ;
 scalar_t__ OCS_HW_STATE_UNINITIALIZED ;
 int hw_queue_teardown (TYPE_1__*) ;
 int ocs_hw_command_cancel (TYPE_1__*) ;
 int ocs_hw_flush (TYPE_1__*) ;
 int ocs_hw_io_cancel (TYPE_1__*) ;
 int ocs_hw_link_event_init (TYPE_1__*) ;
 int ocs_hw_reqtag_reset (TYPE_1__*) ;
 int ocs_hw_rx_free (TYPE_1__*) ;
 int ocs_hw_workaround_setup (TYPE_1__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 int ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*,...) ;
 int ocs_memset (int ,int ,int) ;
 int ocs_udelay (int) ;
 int ocs_unlock (int *) ;
 int shutdown_target_wqe_timer (TYPE_1__*) ;
 int sli_fw_reset (int *) ;
 int sli_queue_reset (int *,int *) ;
 int sli_reset (int *) ;

ocs_hw_rtn_e
ocs_hw_reset(ocs_hw_t *hw, ocs_hw_reset_e reset)
{
 uint32_t i;
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint32_t iters;
 ocs_hw_state_e prev_state = hw->state;

 if (hw->state != OCS_HW_STATE_ACTIVE) {
  ocs_log_test(hw->os, "HW state %d is not active\n", hw->state);
 }

 hw->state = OCS_HW_STATE_RESET_IN_PROGRESS;


 shutdown_target_wqe_timer(hw);

 ocs_hw_flush(hw);






 iters = 10;
 while (!ocs_list_empty(&hw->cmd_head) && iters) {
  ocs_udelay(10000);
  ocs_hw_flush(hw);
  iters--;
 }

 if (ocs_list_empty(&hw->cmd_head)) {
  ocs_log_debug(hw->os, "All commands completed on MQ queue\n");
 } else {
  ocs_log_debug(hw->os, "Some commands still pending on MQ queue\n");
 }


 switch(reset) {
 case 128:
  ocs_log_debug(hw->os, "issuing function level reset\n");
  if (sli_reset(&hw->sli)) {
   ocs_log_err(hw->os, "sli_reset failed\n");
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 129:
  ocs_log_debug(hw->os, "issuing firmware reset\n");
  if (sli_fw_reset(&hw->sli)) {
   ocs_log_err(hw->os, "sli_soft_reset failed\n");
   rc = OCS_HW_RTN_ERROR;
  }




  ocs_log_debug(hw->os, "issuing function level reset\n");
  if (sli_reset(&hw->sli)) {
   ocs_log_err(hw->os, "sli_reset failed\n");
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 default:
  ocs_log_test(hw->os, "unknown reset type - no reset performed\n");
  hw->state = prev_state;
  return OCS_HW_RTN_ERROR;
 }


 if (prev_state != OCS_HW_STATE_UNINITIALIZED) {
  ocs_hw_command_cancel(hw);


  ocs_hw_io_cancel(hw);

  ocs_memset(hw->domains, 0, sizeof(hw->domains));
  ocs_memset(hw->fcf_index_fcfi, 0, sizeof(hw->fcf_index_fcfi));

  ocs_hw_link_event_init(hw);

  ocs_lock(&hw->io_lock);

   while (!ocs_list_empty(&hw->io_timed_wqe)) {
    ocs_list_remove_head(&hw->io_timed_wqe);
   }


   while (!ocs_list_empty(&hw->io_free)) {
    ocs_list_remove_head(&hw->io_free);
   }
   while (!ocs_list_empty(&hw->io_wait_free)) {
    ocs_list_remove_head(&hw->io_wait_free);
   }


   ocs_hw_reqtag_reset(hw);

  ocs_unlock(&hw->io_lock);
 }

 if (prev_state != OCS_HW_STATE_UNINITIALIZED) {
  for (i = 0; i < hw->wq_count; i++) {
   sli_queue_reset(&hw->sli, &hw->wq[i]);
  }

  for (i = 0; i < hw->rq_count; i++) {
   sli_queue_reset(&hw->sli, &hw->rq[i]);
  }

  for (i = 0; i < hw->hw_rq_count; i++) {
   hw_rq_t *rq = hw->hw_rq[i];
   if (rq->rq_tracker != ((void*)0)) {
    uint32_t j;

    for (j = 0; j < rq->entry_count; j++) {
     rq->rq_tracker[j] = ((void*)0);
    }
   }
  }

  for (i = 0; i < hw->mq_count; i++) {
   sli_queue_reset(&hw->sli, &hw->mq[i]);
  }

  for (i = 0; i < hw->cq_count; i++) {
   sli_queue_reset(&hw->sli, &hw->cq[i]);
  }

  for (i = 0; i < hw->eq_count; i++) {
   sli_queue_reset(&hw->sli, &hw->eq[i]);
  }


  ocs_hw_rx_free(hw);


  hw_queue_teardown(hw);
 } else {


  ocs_hw_rx_free(hw);
 }





 ocs_hw_workaround_setup(hw);
 hw->state = OCS_HW_STATE_QUEUES_ALLOCATED;

 return rc;
}
