
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
typedef size_t time_t ;
typedef int sli4_eqe_t ;
struct TYPE_9__ {size_t cq_count; int sli; int os; int * hw_cq; int cq_hash; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {TYPE_3__* queue; } ;
typedef TYPE_2__ hw_eq_t ;
struct TYPE_11__ {scalar_t__ n_posted; scalar_t__ posted_limit; } ;


 int CPUTRACE (char*) ;
 size_t FALSE ;
 size_t OCS_HW_TIMECHECK_ITERATIONS ;
 size_t TRUE ;
 scalar_t__ likely (int) ;
 int ocs_hw_cq_process (TYPE_1__*,int ) ;
 scalar_t__ ocs_hw_queue_hash_find (int ,int ) ;
 int ocs_log_err (int ,char*,int ) ;
 size_t ocs_msectime () ;
 scalar_t__ sli_eq_parse (int *,int *,int *) ;
 int sli_queue_arm (int *,TYPE_3__*,size_t) ;
 int sli_queue_eq_arm (int *,TYPE_3__*,size_t) ;
 int sli_queue_read (int *,TYPE_3__*,int *) ;
 scalar_t__ unlikely (scalar_t__) ;

int32_t
ocs_hw_eq_process(ocs_hw_t *hw, hw_eq_t *eq, uint32_t max_isr_time_msec)
{
 uint8_t eqe[sizeof(sli4_eqe_t)] = { 0 };
 uint32_t done = FALSE;
 uint32_t tcheck_count;
 time_t tstart;
 time_t telapsed;

 tcheck_count = OCS_HW_TIMECHECK_ITERATIONS;
 tstart = ocs_msectime();

 CPUTRACE("");

 while (!done && !sli_queue_read(&hw->sli, eq->queue, eqe)) {
  uint16_t cq_id = 0;
  int32_t rc;

  rc = sli_eq_parse(&hw->sli, eqe, &cq_id);
  if (unlikely(rc)) {
   if (rc > 0) {
    uint32_t i;





    for (i = 0; i < hw->cq_count; i++) {
     ocs_hw_cq_process(hw, hw->hw_cq[i]);
    }
    continue;
   } else {
    return rc;
   }
  } else {
   int32_t index = ocs_hw_queue_hash_find(hw->cq_hash, cq_id);
   if (likely(index >= 0)) {
    ocs_hw_cq_process(hw, hw->hw_cq[index]);
   } else {
    ocs_log_err(hw->os, "bad CQ_ID %#06x\n", cq_id);
   }
  }


  if (eq->queue->n_posted > (eq->queue->posted_limit)) {
   sli_queue_arm(&hw->sli, eq->queue, FALSE);
  }

  if (tcheck_count && (--tcheck_count == 0)) {
   tcheck_count = OCS_HW_TIMECHECK_ITERATIONS;
   telapsed = ocs_msectime() - tstart;
   if (telapsed >= max_isr_time_msec) {
    done = TRUE;
   }
  }
 }
 sli_queue_eq_arm(&hw->sli, eq->queue, TRUE);

 return 0;
}
