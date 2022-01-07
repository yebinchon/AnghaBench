
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef size_t uint16_t ;
struct TYPE_8__ {size_t length; int index; int id; } ;
typedef TYPE_1__ sli4_queue_t ;
struct TYPE_9__ {size_t* hw_rq_lookup; int os; int sli; TYPE_3__** hw_rq; TYPE_1__* rq; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_sequence_t ;
struct TYPE_10__ {int id; int ** rq_tracker; } ;
typedef TYPE_3__ hw_rq_t ;


 int _sli_queue_poke (int *,TYPE_1__*,size_t,int *) ;
 int ocs_log_err (int ,char*,size_t,size_t,size_t,...) ;
 int sli_queue_lock (TYPE_1__*) ;
 int sli_queue_unlock (TYPE_1__*) ;

__attribute__((used)) static ocs_hw_sequence_t *
ocs_hw_rqpair_get(ocs_hw_t *hw, uint16_t rqindex, uint16_t bufindex)
{
 sli4_queue_t *rq_hdr = &hw->rq[rqindex];
 sli4_queue_t *rq_payload = &hw->rq[rqindex+1];
 ocs_hw_sequence_t *seq = ((void*)0);
 hw_rq_t *rq = hw->hw_rq[hw->hw_rq_lookup[rqindex]];





 if (bufindex >= rq_hdr->length) {
  ocs_log_err(hw->os, "RQ index %d bufindex %d exceed ring length %d for id %d\n",
       rqindex, bufindex, rq_hdr->length, rq_hdr->id);
  return ((void*)0);
 }

 sli_queue_lock(rq_hdr);
 sli_queue_lock(rq_payload);







 seq = rq->rq_tracker[bufindex];
 rq->rq_tracker[bufindex] = ((void*)0);

 if (seq == ((void*)0) ) {
  ocs_log_err(hw->os, "RQ buffer NULL, rqindex %d, bufindex %d, current q index = %d\n",
       rqindex, bufindex, rq_hdr->index);
 }

 sli_queue_unlock(rq_payload);
 sli_queue_unlock(rq_hdr);
 return seq;
}
