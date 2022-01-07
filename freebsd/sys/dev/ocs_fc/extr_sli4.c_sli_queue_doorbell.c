
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int os; int port_type; } ;
typedef TYPE_3__ sli4_t ;
struct TYPE_7__ {int rq_batch; int is_hdr; } ;
struct TYPE_8__ {TYPE_1__ flag; } ;
struct TYPE_10__ {int type; int n_posted; int index; int doorbell_offset; int doorbell_rset; int id; TYPE_2__ u; } ;
typedef TYPE_4__ sli4_queue_t ;
typedef int int32_t ;


 int FALSE ;
 int SLI4_MQ_DOORBELL (int,int ) ;
 int SLI4_PORT_TYPE_FC ;
 int SLI4_QUEUE_RQ_BATCH ;
 int SLI4_RQ_DOORBELL (int,int ) ;
 int SLI4_WQ_DOORBELL (int,int,int ) ;





 int ocs_log_test (int ,char*,int) ;
 int ocs_reg_write32 (int ,int ,int ,int) ;
 int sli_cq_doorbell (int,int ,int ) ;
 int sli_eq_doorbell (int,int ,int ) ;

__attribute__((used)) static int32_t
sli_queue_doorbell(sli4_t *sli4, sli4_queue_t *q)
{
 uint32_t val = 0;

 switch (q->type) {
 case 131:
  val = sli_eq_doorbell(q->n_posted, q->id, FALSE);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  break;
 case 132:
  val = sli_cq_doorbell(q->n_posted, q->id, FALSE);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  break;
 case 130:
  val = SLI4_MQ_DOORBELL(q->n_posted, q->id);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  break;
 case 129:
 {
  uint32_t n_posted = q->n_posted;






  if (SLI4_PORT_TYPE_FC == sli4->port_type) {






   if (!q->u.flag.is_hdr) {
    break;
   }





   if (q->u.flag.rq_batch) {
    if (((q->index + q->n_posted) % SLI4_QUEUE_RQ_BATCH)) {
     break;
    }
    n_posted = SLI4_QUEUE_RQ_BATCH;
   }
  }

  val = SLI4_RQ_DOORBELL(n_posted, q->id);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  break;
 }
 case 128:
  val = SLI4_WQ_DOORBELL(q->n_posted, q->index, q->id);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  break;
 default:
  ocs_log_test(sli4->os, "bad queue type %d\n", q->type);
  return -1;
 }

 return 0;
}
