
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_23__ {scalar_t__ virt; } ;
struct TYPE_24__ {scalar_t__ if_type; int * os; TYPE_1__ bmbx; int port_type; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_25__ {int additional_status; int status; } ;
typedef TYPE_3__ sli4_res_hdr_t ;
struct TYPE_26__ {int type; struct TYPE_26__* id; int dma; int lock; } ;
typedef TYPE_4__ sli4_queue_t ;
typedef scalar_t__ (* sli4_destroy_q_fn_t ) (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 int SLI4_PORT_TYPE_FC ;
 TYPE_2__** SLI_QNAME ;





 scalar_t__ ocs_dma_free (int *,int *) ;
 int ocs_lock_free (int *) ;
 int ocs_log_crit (int *,char*,TYPE_2__*) ;
 int ocs_log_err (int *,char*,TYPE_2__*,...) ;
 int ocs_log_test (int *,char*,...) ;
 int offsetof (int ,int ) ;
 int payload ;
 int sli4_cmd_sli_config_t ;
 scalar_t__ sli_bmbx_command (TYPE_2__*) ;
 scalar_t__ sli_cmd_common_destroy_cq (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ sli_cmd_common_destroy_eq (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ sli_cmd_common_destroy_mq (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ sli_cmd_fcoe_rq_destroy (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ sli_cmd_fcoe_wq_destroy (TYPE_2__*,scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ sli_res_sli_config (scalar_t__) ;

int32_t
sli_queue_free(sli4_t *sli4, sli4_queue_t *q, uint32_t destroy_queues, uint32_t free_memory)
{
 sli4_destroy_q_fn_t destroy = ((void*)0);
 int32_t rc = -1;

 if (!sli4 || !q) {
  ocs_log_err(((void*)0), "bad parameter sli4=%p q=%p\n", sli4, q);
  return -1;
 }

 if (destroy_queues) {
  switch (q->type) {
  case 131:
   destroy = sli_cmd_common_destroy_eq;
   break;
  case 132:
   destroy = sli_cmd_common_destroy_cq;
   break;
  case 130:
   destroy = sli_cmd_common_destroy_mq;
   break;
  case 128:
   if (SLI4_PORT_TYPE_FC == sli4->port_type) {
    destroy = sli_cmd_fcoe_wq_destroy;
   } else {

    ocs_log_test(sli4->os, "unsupported WQ destroy\n");
    return -1;
   }
   break;
  case 129:
   if (SLI4_PORT_TYPE_FC == sli4->port_type) {
    destroy = sli_cmd_fcoe_rq_destroy;
   } else {

    ocs_log_test(sli4->os, "unsupported RQ destroy\n");
    return -1;
   }
   break;
  default:
   ocs_log_test(sli4->os, "bad queue type %d\n",
     q->type);
   return -1;
  }






  if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type) {
   destroy = ((void*)0);
  }


  if (destroy && destroy(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE, q->id)) {
   sli4_res_hdr_t *res = ((void*)0);

   if (sli_bmbx_command(sli4)){
    ocs_log_crit(sli4->os, "bootstrap mailbox write fail destroy %s\n",
      SLI_QNAME[q->type]);
   } else if (sli_res_sli_config(sli4->bmbx.virt)) {
    ocs_log_err(sli4->os, "bad status destroy %s\n", SLI_QNAME[q->type]);
   } else {
    res = (void *)((uint8_t *)sli4->bmbx.virt +
      offsetof(sli4_cmd_sli_config_t, payload));

    if (res->status) {
     ocs_log_err(sli4->os, "bad destroy %s status=%#x addl=%#x\n",
       SLI_QNAME[q->type],
       res->status, res->additional_status);
    } else {
     rc = 0;
    }
   }
  }
 }

 if (free_memory) {
  ocs_lock_free(&q->lock);

  if (ocs_dma_free(sli4->os, &q->dma)) {
   ocs_log_err(sli4->os, "%s queue ID %d free failed\n",
        SLI_QNAME[q->type], q->id);
   rc = -1;
  }
 }

 return rc;
}
