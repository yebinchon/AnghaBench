
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef void* uint8_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_17__ {scalar_t__ sgl_pre_registered; } ;
struct TYPE_22__ {TYPE_1__ config; int os; } ;
typedef TYPE_6__ sli4_t ;
struct TYPE_23__ {int buffer_address_high; int buffer_address_low; } ;
typedef TYPE_7__ sli4_sge_t ;
struct TYPE_19__ {int sgl_segment_address_high; int sgl_segment_address_low; } ;
struct TYPE_18__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_20__ {TYPE_3__ blp; TYPE_2__ data; } ;
struct TYPE_21__ {int buffer_length; TYPE_4__ u; int bde_type; } ;
struct TYPE_24__ {int remote_n_port_id; void* cq_id; int cmd_type; void* hlm; void* qosd; int iod; void* request_tag; void* timer; int command; int class; int context_tag; int ct; void* xri_tag; void* r_ctl; void* type; void* df_ctl; void* max_response_payload_length; void* request_payload_length; TYPE_5__ bde; void* xbl; void* dbde; } ;
typedef TYPE_8__ sli4_gen_request64_wqe_t ;
struct TYPE_25__ {int fc_id; scalar_t__ node_group; int indicator; } ;
typedef TYPE_9__ ocs_remote_node_t ;
struct TYPE_16__ {int phys; TYPE_7__* virt; } ;
typedef TYPE_10__ ocs_dma_t ;
typedef int int32_t ;


 void* FALSE ;
 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_BDE_TYPE_BLP ;
 int SLI4_CMD_GEN_REQUEST64_WQE ;
 int SLI4_ELS_REQUEST64_CLASS_3 ;
 int SLI4_ELS_REQUEST64_CONTEXT_RPI ;
 int SLI4_ELS_REQUEST64_DIR_READ ;
 int SLI4_WQE_GEN_REQUEST64 ;
 void* TRUE ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_log_err (int ,char*,TYPE_10__*,TYPE_7__*) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_gen_request64_wqe(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *sgl,
        uint32_t req_len, uint32_t max_rsp_len, uint8_t timeout,
        uint16_t xri, uint16_t tag, uint16_t cq_id, ocs_remote_node_t *rnode,
        uint8_t r_ctl, uint8_t type, uint8_t df_ctl)
{
 sli4_gen_request64_wqe_t *gen = buf;
 sli4_sge_t *sge = ((void*)0);

 ocs_memset(buf, 0, size);

 if (!sgl || !sgl->virt) {
  ocs_log_err(sli4->os, "bad parameter sgl=%p virt=%p\n",
       sgl, sgl ? sgl->virt : ((void*)0));
  return -1;
 }
 sge = sgl->virt;

 if (sli4->config.sgl_pre_registered) {
  gen->xbl = FALSE;

  gen->dbde = TRUE;
  gen->bde.bde_type = SLI4_BDE_TYPE_BDE_64;

  gen->bde.buffer_length = req_len;
  gen->bde.u.data.buffer_address_low = sge[0].buffer_address_low;
  gen->bde.u.data.buffer_address_high = sge[0].buffer_address_high;
 } else {
  gen->xbl = TRUE;

  gen->bde.bde_type = SLI4_BDE_TYPE_BLP;

  gen->bde.buffer_length = 2 * sizeof(sli4_sge_t);
  gen->bde.u.blp.sgl_segment_address_low = ocs_addr32_lo(sgl->phys);
  gen->bde.u.blp.sgl_segment_address_high = ocs_addr32_hi(sgl->phys);
 }

 gen->request_payload_length = req_len;
 gen->max_response_payload_length = max_rsp_len;

 gen->df_ctl = df_ctl;
 gen->type = type;
 gen->r_ctl = r_ctl;

 gen->xri_tag = xri;

 gen->ct = SLI4_ELS_REQUEST64_CONTEXT_RPI;
 gen->context_tag = rnode->indicator;

 gen->class = SLI4_ELS_REQUEST64_CLASS_3;

 gen->command = SLI4_WQE_GEN_REQUEST64;

 gen->timer = timeout;

 gen->request_tag = tag;

 gen->iod = SLI4_ELS_REQUEST64_DIR_READ;

 gen->qosd = TRUE;

 if (rnode->node_group) {
  gen->hlm = TRUE;
  gen->remote_n_port_id = rnode->fc_id & 0x00ffffff;
 }

 gen->cmd_type = SLI4_CMD_GEN_REQUEST64_WQE;

 gen->cq_id = cq_id;

 return 0;
}
