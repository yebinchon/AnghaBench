
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_19__ {scalar_t__ sgl_pre_registered; } ;
struct TYPE_26__ {int os; int if_type; TYPE_1__ config; } ;
typedef TYPE_8__ sli4_t ;
struct TYPE_27__ {int buffer_address_high; int buffer_address_low; } ;
typedef TYPE_9__ sli4_sge_t ;
struct TYPE_21__ {int sgl_segment_address_high; int sgl_segment_address_low; } ;
struct TYPE_20__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_22__ {TYPE_3__ blp; TYPE_2__ data; } ;
struct TYPE_23__ {int buffer_length; TYPE_4__ u; int bde_type; } ;
struct TYPE_16__ {int timer; int remote_id; scalar_t__ ct; int temporary_rpi; void* cq_id; int cmd_type; int context_tag; void* els_id; int sid; void* sp; void* qosd; int iod; void* hlm; void* request_tag; int command; int class; void* xri_tag; void* max_response_payload_length; void* els_request_payload_length; TYPE_5__ els_request_payload; void* xbl; void* dbde; } ;
typedef TYPE_10__ sli4_els_request64_wqe_t ;
struct TYPE_17__ {int fc_id; int indicator; TYPE_7__* sport; int attached; scalar_t__ node_group; } ;
typedef TYPE_11__ ocs_remote_node_t ;
struct TYPE_18__ {int phys; TYPE_9__* virt; } ;
typedef TYPE_12__ ocs_dma_t ;
typedef int int32_t ;
struct TYPE_25__ {int indicator; int fc_id; TYPE_6__* domain; } ;
struct TYPE_24__ {int fcf_indicator; } ;


 void* FALSE ;
 int FC_ADDR_FABRIC ;





 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_BDE_TYPE_BLP ;
 int SLI4_ELS_REQUEST64_CLASS_3 ;
 int SLI4_ELS_REQUEST64_CMD_FABRIC ;
 int SLI4_ELS_REQUEST64_CMD_NON_FABRIC ;
 scalar_t__ SLI4_ELS_REQUEST64_CONTEXT_FCFI ;
 scalar_t__ SLI4_ELS_REQUEST64_CONTEXT_RPI ;
 scalar_t__ SLI4_ELS_REQUEST64_CONTEXT_VPI ;
 int SLI4_ELS_REQUEST64_DIR_READ ;
 void* SLI4_ELS_REQUEST64_FDISC ;
 void* SLI4_ELS_REQUEST64_FLOGIN ;
 void* SLI4_ELS_REQUEST64_LOGO ;
 void* SLI4_ELS_REQUEST64_OTHER ;
 void* SLI4_ELS_REQUEST64_PLOGI ;
 int SLI4_IF_TYPE_BE3_SKH_PF ;
 int SLI4_WQE_ELS_REQUEST64 ;
 void* TRUE ;
 int UINT32_MAX ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_log_test (int ,char*) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_els_request64_wqe(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *sgl, uint8_t req_type,
        uint32_t req_len, uint32_t max_rsp_len, uint8_t timeout,
        uint16_t xri, uint16_t tag, uint16_t cq_id, ocs_remote_node_t *rnode)
{
 sli4_els_request64_wqe_t *els = buf;
 sli4_sge_t *sge = sgl->virt;
 uint8_t is_fabric = FALSE;

 ocs_memset(buf, 0, size);

 if (sli4->config.sgl_pre_registered) {
  els->xbl = FALSE;

  els->dbde = TRUE;
  els->els_request_payload.bde_type = SLI4_BDE_TYPE_BDE_64;

  els->els_request_payload.buffer_length = req_len;
  els->els_request_payload.u.data.buffer_address_low = sge[0].buffer_address_low;
  els->els_request_payload.u.data.buffer_address_high = sge[0].buffer_address_high;
 } else {
  els->xbl = TRUE;

  els->els_request_payload.bde_type = SLI4_BDE_TYPE_BLP;

  els->els_request_payload.buffer_length = 2 * sizeof(sli4_sge_t);
  els->els_request_payload.u.blp.sgl_segment_address_low = ocs_addr32_lo(sgl->phys);
  els->els_request_payload.u.blp.sgl_segment_address_high = ocs_addr32_hi(sgl->phys);
 }

 els->els_request_payload_length = req_len;
 els->max_response_payload_length = max_rsp_len;

 els->xri_tag = xri;
 els->timer = timeout;
 els->class = SLI4_ELS_REQUEST64_CLASS_3;

 els->command = SLI4_WQE_ELS_REQUEST64;

 els->request_tag = tag;

 if (rnode->node_group) {
  els->hlm = TRUE;
  els->remote_id = rnode->fc_id & 0x00ffffff;
 }

 els->iod = SLI4_ELS_REQUEST64_DIR_READ;

 els->qosd = TRUE;



 switch (req_type) {
 case 130:
  els->els_id = SLI4_ELS_REQUEST64_LOGO;
  if (rnode->attached) {
   els->ct = SLI4_ELS_REQUEST64_CONTEXT_RPI;
   els->context_tag = rnode->indicator;
  } else {
   els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
   els->context_tag = rnode->sport->indicator;
  }
  if (FC_ADDR_FABRIC == rnode->fc_id) {
   is_fabric = TRUE;
  }
  break;
 case 132:
  if (FC_ADDR_FABRIC == rnode->fc_id) {
   is_fabric = TRUE;
  }
  if (0 == rnode->sport->fc_id) {
   els->els_id = SLI4_ELS_REQUEST64_FDISC;
   is_fabric = TRUE;
  } else {
   els->els_id = SLI4_ELS_REQUEST64_OTHER;
  }
  els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
  els->context_tag = rnode->sport->indicator;
  els->sp = TRUE;
  break;
 case 131:
  els->els_id = SLI4_ELS_REQUEST64_FLOGIN;
  is_fabric = TRUE;
  if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type) {
   if (!rnode->sport->domain) {
    ocs_log_test(sli4->os, "invalid domain handle\n");
    return -1;
   }




   els->ct = SLI4_ELS_REQUEST64_CONTEXT_FCFI;
   els->context_tag = rnode->sport->domain->fcf_indicator;
   els->sp = TRUE;
  } else {
   els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
   els->context_tag = rnode->sport->indicator;
   els->sp = TRUE;
   if (rnode->sport->fc_id != UINT32_MAX) {
    els->sid = rnode->sport->fc_id;
   }
  }
  break;
 case 129:
  els->els_id = SLI4_ELS_REQUEST64_PLOGI;
  els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
  els->context_tag = rnode->sport->indicator;
  break;
 case 128:
  els->els_id = SLI4_ELS_REQUEST64_OTHER;
  els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
  els->context_tag = rnode->sport->indicator;
  break;
 default:
  els->els_id = SLI4_ELS_REQUEST64_OTHER;
  if (rnode->attached) {
   els->ct = SLI4_ELS_REQUEST64_CONTEXT_RPI;
   els->context_tag = rnode->indicator;
  } else {
   els->ct = SLI4_ELS_REQUEST64_CONTEXT_VPI;
   els->context_tag = rnode->sport->indicator;
  }
  break;
 }

 if (is_fabric) {
  els->cmd_type = SLI4_ELS_REQUEST64_CMD_FABRIC;
 } else {
  els->cmd_type = SLI4_ELS_REQUEST64_CMD_NON_FABRIC;
 }

 els->cq_id = cq_id;

 if (SLI4_ELS_REQUEST64_CONTEXT_RPI != els->ct) {
  els->remote_id = rnode->fc_id;
 }
 if (SLI4_ELS_REQUEST64_CONTEXT_VPI == els->ct) {
  els->temporary_rpi = rnode->indicator;
 }

 return 0;
}
