
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int sli4_queue_t ;
typedef int sli4_qentry_e ;
struct TYPE_12__ {int xri; } ;
typedef TYPE_2__ sli4_fc_xri_aborted_cqe_t ;
struct TYPE_13__ {int wq_id; } ;
typedef TYPE_3__ sli4_fc_wqec_t ;
struct TYPE_14__ {int status; int xb; int wqe_specific_2; int wqe_specific_1; int request_tag; int hw_status; } ;
typedef TYPE_4__ sli4_fc_wcqe_t ;
struct TYPE_15__ {int status; int xb; int total_data_placed; int xri; int hw_status; } ;
typedef TYPE_5__ sli4_fc_optimized_write_data_cqe_t ;
struct TYPE_16__ {int status; int rq_id; } ;
typedef TYPE_6__ sli4_fc_optimized_write_cmd_cqe_t ;
struct TYPE_17__ {int status; int rq_id; } ;
typedef TYPE_7__ sli4_fc_coalescing_rcqe_t ;
struct TYPE_18__ {int status; int rq_id; } ;
typedef TYPE_8__ sli4_fc_async_rcqe_v1_t ;
struct TYPE_19__ {int status; int rq_id; } ;
typedef TYPE_9__ sli4_fc_async_rcqe_t ;
typedef int int32_t ;


 size_t SLI4_CQE_CODE_OFFSET ;
 int SLI4_FC_WCQE_STATUS_FCP_RSP_FAILURE ;
 int SLI4_FC_WCQE_STATUS_SUCCESS ;
 int SLI_QENTRY_MAX ;
 int SLI_QENTRY_OPT_WRITE_CMD ;
 int SLI_QENTRY_OPT_WRITE_DATA ;
 int SLI_QENTRY_RQ ;
 int SLI_QENTRY_WQ ;
 int SLI_QENTRY_WQ_RELEASE ;
 int SLI_QENTRY_XABT ;
 int UINT16_MAX ;
 int ocs_log_test (int ,char*,int,...) ;

int32_t
sli_fc_cqe_parse(sli4_t *sli4, sli4_queue_t *cq, uint8_t *cqe, sli4_qentry_e *etype,
  uint16_t *r_id)
{
 uint8_t code = cqe[SLI4_CQE_CODE_OFFSET];
 int32_t rc = -1;

 switch (code) {
 case 129:
 {
  sli4_fc_wcqe_t *wcqe = (void *)cqe;

  *etype = SLI_QENTRY_WQ;
  *r_id = wcqe->request_tag;
  rc = wcqe->status;


  if (rc && (rc != SLI4_FC_WCQE_STATUS_FCP_RSP_FAILURE)) {

   ocs_log_test(sli4->os, "WCQE: status=%#x hw_status=%#x tag=%#x w1=%#x w2=%#x xb=%d\n",
    wcqe->status, wcqe->hw_status,
    wcqe->request_tag, wcqe->wqe_specific_1,
    wcqe->wqe_specific_2, wcqe->xb);
   ocs_log_test(sli4->os, "      %08X %08X %08X %08X\n", ((uint32_t*) cqe)[0], ((uint32_t*) cqe)[1],
    ((uint32_t*) cqe)[2], ((uint32_t*) cqe)[3]);
  }





  break;
 }
 case 132:
 {
  sli4_fc_async_rcqe_t *rcqe = (void *)cqe;

  *etype = SLI_QENTRY_RQ;
  *r_id = rcqe->rq_id;
  rc = rcqe->status;
  break;
 }
 case 131:
 {
  sli4_fc_async_rcqe_v1_t *rcqe = (void *)cqe;

  *etype = SLI_QENTRY_RQ;
  *r_id = rcqe->rq_id;
  rc = rcqe->status;
  break;
 }
 case 135:
 {
  sli4_fc_optimized_write_cmd_cqe_t *optcqe = (void *)cqe;

  *etype = SLI_QENTRY_OPT_WRITE_CMD;
  *r_id = optcqe->rq_id;
  rc = optcqe->status;
  break;
 }
 case 134:
 {
  sli4_fc_optimized_write_data_cqe_t *dcqe = (void *)cqe;

  *etype = SLI_QENTRY_OPT_WRITE_DATA;
  *r_id = dcqe->xri;
  rc = dcqe->status;


  if (rc != SLI4_FC_WCQE_STATUS_SUCCESS) {
   ocs_log_test(sli4->os, "Optimized DATA CQE: status=%#x hw_status=%#x xri=%#x dpl=%#x w3=%#x xb=%d\n",
    dcqe->status, dcqe->hw_status,
    dcqe->xri, dcqe->total_data_placed,
    ((uint32_t*) cqe)[3], dcqe->xb);
  }
  break;
 }
 case 130:
 {
  sli4_fc_coalescing_rcqe_t *rcqe = (void *)cqe;

  *etype = SLI_QENTRY_RQ;
  *r_id = rcqe->rq_id;
  rc = rcqe->status;
  break;
 }
 case 128:
 {
  sli4_fc_xri_aborted_cqe_t *xa = (void *)cqe;

  *etype = SLI_QENTRY_XABT;
  *r_id = xa->xri;
  rc = 0;
  break;
 }
 case 133: {
  sli4_fc_wqec_t *wqec = (void*) cqe;

  *etype = SLI_QENTRY_WQ_RELEASE;
  *r_id = wqec->wq_id;
  rc = 0;
  break;
 }
 default:
  ocs_log_test(sli4->os, "CQE completion code %d not handled\n", code);
  *etype = SLI_QENTRY_MAX;
  *r_id = UINT16_MAX;
 }

 return rc;
}
