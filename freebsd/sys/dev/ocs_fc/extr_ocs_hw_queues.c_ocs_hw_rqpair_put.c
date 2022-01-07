
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_18__ {int id; } ;
typedef TYPE_5__ sli4_queue_t ;
struct TYPE_19__ {size_t* hw_rq_lookup; int os; int sli; TYPE_8__** hw_rq; TYPE_5__* rq; } ;
typedef TYPE_6__ ocs_hw_t ;
struct TYPE_20__ {TYPE_4__* payload; TYPE_2__* header; } ;
typedef TYPE_7__ ocs_hw_sequence_t ;
typedef scalar_t__ int32_t ;
struct TYPE_21__ {TYPE_7__** rq_tracker; } ;
typedef TYPE_8__ hw_rq_t ;
struct TYPE_16__ {int phys; } ;
struct TYPE_17__ {size_t rqindex; TYPE_3__ dma; } ;
struct TYPE_14__ {int phys; } ;
struct TYPE_15__ {size_t rqindex; TYPE_1__ dma; } ;


 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ _sli_queue_write (int *,TYPE_5__*,void*) ;
 size_t ocs_addr32_hi (int ) ;
 size_t ocs_addr32_lo (int ) ;
 int ocs_hw_assert (int) ;
 int ocs_log_err (int ,char*,int ) ;
 int ocs_log_test (int ,char*,size_t,scalar_t__) ;
 int sli_queue_lock (TYPE_5__*) ;
 int sli_queue_unlock (TYPE_5__*) ;

__attribute__((used)) static int32_t
ocs_hw_rqpair_put(ocs_hw_t *hw, ocs_hw_sequence_t *seq)
{
 sli4_queue_t *rq_hdr = &hw->rq[seq->header->rqindex];
 sli4_queue_t *rq_payload = &hw->rq[seq->payload->rqindex];
 uint32_t hw_rq_index = hw->hw_rq_lookup[seq->header->rqindex];
 hw_rq_t *rq = hw->hw_rq[hw_rq_index];
 uint32_t phys_hdr[2];
 uint32_t phys_payload[2];
 int32_t qindex_hdr;
 int32_t qindex_payload;


 phys_hdr[0] = ocs_addr32_hi(seq->header->dma.phys);
 phys_hdr[1] = ocs_addr32_lo(seq->header->dma.phys);
 phys_payload[0] = ocs_addr32_hi(seq->payload->dma.phys);
 phys_payload[1] = ocs_addr32_lo(seq->payload->dma.phys);

 sli_queue_lock(rq_hdr);
 sli_queue_lock(rq_payload);






 qindex_payload = _sli_queue_write(&hw->sli, rq_payload, (void *)phys_payload);
 qindex_hdr = _sli_queue_write(&hw->sli, rq_hdr, (void *)phys_hdr);
 if (qindex_hdr < 0 ||
     qindex_payload < 0) {
  ocs_log_err(hw->os, "RQ_ID=%#x write failed\n", rq_hdr->id);
  sli_queue_unlock(rq_payload);
  sli_queue_unlock(rq_hdr);
  return OCS_HW_RTN_ERROR;
 }


 ocs_hw_assert(qindex_hdr == qindex_payload);


 if (rq->rq_tracker[qindex_hdr] == ((void*)0)) {
  rq->rq_tracker[qindex_hdr] = seq;
 } else {
  ocs_log_test(hw->os, "expected rq_tracker[%d][%d] buffer to be NULL\n",
        hw_rq_index, qindex_hdr);
 }

 sli_queue_unlock(rq_payload);
 sli_queue_unlock(rq_hdr);
 return OCS_HW_RTN_SUCCESS;
}
