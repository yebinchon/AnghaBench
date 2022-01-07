
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_23__ {int virt; } ;
struct TYPE_24__ {int os; TYPE_3__ bmbx; int if_type; int port_type; } ;
typedef TYPE_4__ sli4_t ;
struct TYPE_21__ {int is_mq; } ;
struct TYPE_22__ {TYPE_1__ flag; } ;
struct TYPE_25__ {int ulp; int id; int dma; TYPE_2__ u; } ;
typedef TYPE_5__ sli4_queue_t ;
typedef scalar_t__ (* sli4_create_q_fn_t ) (TYPE_4__*,int ,int ,int *,int ,int ) ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int SLI4_IF_TYPE_BE3_SKH_PF ;
 int SLI4_PORT_TYPE_FC ;
 int SLI_PAGE_SIZE ;
 int * SLI_QNAME ;




 int TRUE ;
 scalar_t__ __sli_create_queue (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ __sli_queue_init (TYPE_4__*,TYPE_5__*,int,int,int,int) ;
 int ocs_log_err (int ,char*,TYPE_4__*,...) ;
 int ocs_log_test (int ,char*,...) ;
 scalar_t__ sli_cmd_common_create_cq (TYPE_4__*,int ,int ,int *,int ,int ) ;
 scalar_t__ sli_cmd_common_create_eq (TYPE_4__*,int ,int ,int *,int ,int ) ;
 scalar_t__ sli_cmd_common_create_mq_ext (TYPE_4__*,int ,int ,int *,int ,int ) ;
 scalar_t__ sli_cmd_fcoe_wq_create (TYPE_4__*,int ,int ,int *,int ,int ) ;
 scalar_t__ sli_cmd_fcoe_wq_create_v1 (TYPE_4__*,int ,int ,int *,int ,int ) ;
 int sli_get_queue_entry_size (TYPE_4__*,int) ;

int32_t
sli_queue_alloc(sli4_t *sli4, uint32_t qtype, sli4_queue_t *q, uint32_t n_entries,
  sli4_queue_t *assoc, uint16_t ulp)
{
 int32_t size;
 uint32_t align = 0;
 sli4_create_q_fn_t create = ((void*)0);

 if (!sli4 || !q) {
  ocs_log_err(((void*)0), "bad parameter sli4=%p q=%p\n", sli4, q);
  return -1;
 }


 size = sli_get_queue_entry_size(sli4, qtype);
 if (size < 0)
  return -1;
 align = SLI_PAGE_SIZE;

 switch (qtype) {
 case 130:
  create = sli_cmd_common_create_eq;
  break;
 case 131:
  create = sli_cmd_common_create_cq;
  break;
 case 129:

  switch (n_entries) {
  case 16:
  case 32:
  case 64:
  case 128:
   break;
  default:
   ocs_log_test(sli4->os, "illegal n_entries value %d for MQ\n", n_entries);
   return -1;
  }
  assoc->u.flag.is_mq = TRUE;
  create = sli_cmd_common_create_mq_ext;
  break;
 case 128:
  if (SLI4_PORT_TYPE_FC == sli4->port_type) {
   if (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF) {
    create = sli_cmd_fcoe_wq_create;
   } else {
    create = sli_cmd_fcoe_wq_create_v1;
   }
  } else {

   ocs_log_test(sli4->os, "unsupported WQ create\n");
   return -1;
  }
  break;
 default:
  ocs_log_test(sli4->os, "unknown queue type %d\n", qtype);
  return -1;
 }


 if (__sli_queue_init(sli4, q, qtype, size, n_entries, align)) {
  ocs_log_err(sli4->os, "%s allocation failed\n", SLI_QNAME[qtype]);
  return -1;
 }

 if (create(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE, &q->dma, assoc ? assoc->id : 0, ulp)) {

  if (__sli_create_queue(sli4, q)) {
   ocs_log_err(sli4->os, "create %s failed\n", SLI_QNAME[qtype]);
   return -1;
  }
  q->ulp = ulp;
 } else {
  ocs_log_err(sli4->os, "cannot create %s\n", SLI_QNAME[qtype]);
  return -1;
 }

 return 0;
}
