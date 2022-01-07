
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_4__ {int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_5__ {int ia; int ir; int cmd_type; void* cq_id; int qosd; void* request_tag; int command; void* t_tag; void* t_mask; int criteria; } ;
typedef TYPE_2__ sli4_abort_wqe_t ;
typedef int sli4_abort_type_e ;
typedef int int32_t ;


 int SLI4_ABORT_CRITERIA_ABORT_TAG ;
 int SLI4_ABORT_CRITERIA_REQUEST_TAG ;
 int SLI4_ABORT_CRITERIA_XRI_TAG ;
 int SLI4_CMD_ABORT_WQE ;
 int SLI4_WQE_ABORT ;



 int TRUE ;
 int ocs_log_test (int ,char*,int) ;
 int ocs_log_warn (int ,char*,void*,void*) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_abort_wqe(sli4_t *sli4, void *buf, size_t size, sli4_abort_type_e type, uint32_t send_abts,
       uint32_t ids, uint32_t mask, uint16_t tag, uint16_t cq_id)
{
 sli4_abort_wqe_t *abort = buf;

 ocs_memset(buf, 0, size);

 switch (type) {
 case 128:
  abort->criteria = SLI4_ABORT_CRITERIA_XRI_TAG;
  if (mask) {
   ocs_log_warn(sli4->os, "warning non-zero mask %#x when aborting XRI %#x\n", mask, ids);
   mask = 0;
  }
  break;
 case 130:
  abort->criteria = SLI4_ABORT_CRITERIA_ABORT_TAG;
  break;
 case 129:
  abort->criteria = SLI4_ABORT_CRITERIA_REQUEST_TAG;
  break;
 default:
  ocs_log_test(sli4->os, "unsupported type %#x\n", type);
  return -1;
 }

 abort->ia = send_abts ? 0 : 1;


 abort->ir = 1;

 abort->t_mask = mask;
 abort->t_tag = ids;
 abort->command = SLI4_WQE_ABORT;
 abort->request_tag = tag;
 abort->qosd = TRUE;
 abort->cq_id = cq_id;
 abort->cmd_type = SLI4_CMD_ABORT_WQE;

 return 0;
}
