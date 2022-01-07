
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ time_t ;
typedef int sli4_qentry_e ;
typedef int sli4_mcqe_t ;
struct TYPE_21__ {int sli; int os; TYPE_2__** hw_wq; int wq_hash; int mq; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;
struct TYPE_22__ {int wqec_set_count; } ;
typedef TYPE_2__ hw_wq_t ;
struct TYPE_23__ {TYPE_4__* queue; } ;
typedef TYPE_3__ hw_cq_t ;
struct TYPE_24__ {scalar_t__ proc_limit; scalar_t__ n_posted; scalar_t__ posted_limit; scalar_t__ max_num_processed; scalar_t__ max_process_time; } ;


 int CPUTRACE (char*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ UINT16_MAX ;
 int hw_wq_submit_pending (TYPE_2__*,int ) ;
 int ocs_hw_mq_process (TYPE_1__*,int,int ) ;
 int ocs_hw_queue_hash_find (int ,scalar_t__) ;
 int ocs_hw_rqpair_process_auto_xfr_rdy_cmd (TYPE_1__*,TYPE_3__*,int *) ;
 int ocs_hw_rqpair_process_auto_xfr_rdy_data (TYPE_1__*,TYPE_3__*,int *) ;
 int ocs_hw_rqpair_process_rq (TYPE_1__*,TYPE_3__*,int *) ;
 int ocs_hw_wq_process (TYPE_1__*,TYPE_3__*,int *,int,scalar_t__) ;
 int ocs_hw_xabt_process (TYPE_1__*,TYPE_3__*,int *,scalar_t__) ;
 int ocs_log_err (int ,char*,int,scalar_t__) ;
 int ocs_log_test (int ,char*,int,scalar_t__) ;
 scalar_t__ ocs_msectime () ;
 int sli_cq_parse (int *,TYPE_4__*,int *,int*,scalar_t__*) ;
 int sli_cqe_async (int *,int *) ;
 int sli_queue_arm (int *,TYPE_4__*,int ) ;
 int sli_queue_read (int *,TYPE_4__*,int *) ;
 int unlikely (int) ;

void
ocs_hw_cq_process(ocs_hw_t *hw, hw_cq_t *cq)
{
 uint8_t cqe[sizeof(sli4_mcqe_t)];
 uint16_t rid = UINT16_MAX;
 sli4_qentry_e ctype;
 int32_t status;
 uint32_t n_processed = 0;
 time_t tstart;
 time_t telapsed;

 tstart = ocs_msectime();

 while (!sli_queue_read(&hw->sli, cq->queue, cqe)) {
  status = sli_cq_parse(&hw->sli, cq->queue, cqe, &ctype, &rid);






  if (status < 0) {
   if (status == -2) {

    continue;
   }

   break;
  }

  switch (ctype) {
  case 135:
   CPUTRACE("async");
   sli_cqe_async(&hw->sli, cqe);
   break;
  case 134:




   CPUTRACE("mq");
   ocs_hw_mq_process(hw, status, hw->mq);
   break;
  case 133:
   ocs_hw_rqpair_process_auto_xfr_rdy_cmd(hw, cq, cqe);
   break;
  case 132:
   ocs_hw_rqpair_process_auto_xfr_rdy_data(hw, cq, cqe);
   break;
  case 130:
   CPUTRACE("wq");
   ocs_hw_wq_process(hw, cq, cqe, status, rid);
   break;
  case 129: {
   uint32_t wq_id = rid;
   int32_t index = ocs_hw_queue_hash_find(hw->wq_hash, wq_id);

   if (unlikely(index < 0)) {
    ocs_log_err(hw->os, "unknown idx=%#x rid=%#x\n",
         index, rid);
    break;
   }

   hw_wq_t *wq = hw->hw_wq[index];


   hw_wq_submit_pending(wq, wq->wqec_set_count);

   break;
  }

  case 131:
   CPUTRACE("rq");
   ocs_hw_rqpair_process_rq(hw, cq, cqe);
   break;
  case 128: {
   CPUTRACE("xabt");
   ocs_hw_xabt_process(hw, cq, cqe, rid);
   break;

  }
  default:
   ocs_log_test(hw->os, "unhandled ctype=%#x rid=%#x\n", ctype, rid);
   break;
  }

  n_processed++;
  if (n_processed == cq->queue->proc_limit) {
   break;
  }

  if (cq->queue->n_posted >= (cq->queue->posted_limit)) {
   sli_queue_arm(&hw->sli, cq->queue, FALSE);
  }
 }

 sli_queue_arm(&hw->sli, cq->queue, TRUE);

 if (n_processed > cq->queue->max_num_processed) {
  cq->queue->max_num_processed = n_processed;
 }
 telapsed = ocs_msectime() - tstart;
 if (telapsed > cq->queue->max_process_time) {
  cq->queue->max_process_time = telapsed;
 }
}
