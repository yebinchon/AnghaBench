
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_6__ {int type; int lock; int n_posted; int doorbell_offset; int doorbell_rset; int id; } ;
typedef TYPE_2__ sli4_queue_t ;
typedef int int32_t ;


 int * SLI_QNAME ;


 int ocs_lock (int *) ;
 int ocs_log_test (int ,char*,int ) ;
 int ocs_reg_write32 (int ,int ,int ,int ) ;
 int ocs_unlock (int *) ;
 int sli_cq_doorbell (int ,int ,int ) ;
 int sli_eq_doorbell (int ,int ,int ) ;

int32_t
sli_queue_arm(sli4_t *sli4, sli4_queue_t *q, uint8_t arm)
{
 uint32_t val = 0;

 ocs_lock(&q->lock);

 switch (q->type) {
 case 128:
  val = sli_eq_doorbell(q->n_posted, q->id, arm);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  q->n_posted = 0;
  break;
 case 129:
  val = sli_cq_doorbell(q->n_posted, q->id, arm);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  q->n_posted = 0;
  break;
 default:
  ocs_log_test(sli4->os, "should only be used for EQ/CQ, not %s\n",
        SLI_QNAME[q->type]);
 }

 ocs_unlock(&q->lock);

 return 0;
}
