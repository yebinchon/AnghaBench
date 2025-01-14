
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
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_19__ {scalar_t__ sgl_pre_registered; } ;
struct TYPE_24__ {TYPE_1__ config; int os; } ;
typedef TYPE_6__ sli4_t ;
struct TYPE_25__ {scalar_t__ buffer_length; int buffer_address_high; int buffer_address_low; } ;
typedef TYPE_7__ sli4_sge_t ;
struct TYPE_21__ {int sgl_segment_address_high; int sgl_segment_address_low; } ;
struct TYPE_20__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_22__ {TYPE_3__ blp; TYPE_2__ data; } ;
struct TYPE_23__ {TYPE_4__ u; scalar_t__ buffer_length; int bde_type; } ;
struct TYPE_26__ {int pu; int len_loc; int remote_n_port_id; void* cq_id; int cmd_type; void* erp; void* hlm; void* request_tag; void* abort_tag; int ct; int command; int class; int timer; int context_tag; void* xri_tag; scalar_t__ payload_offset_length; TYPE_5__ bde; void* xbl; void* dbde; } ;
typedef TYPE_8__ sli4_fcp_icmnd64_wqe_t ;
struct TYPE_27__ {int fc_id; scalar_t__ node; scalar_t__ node_group; } ;
typedef TYPE_9__ ocs_remote_node_t ;
struct TYPE_17__ {scalar_t__ fcp2device; } ;
typedef TYPE_10__ ocs_node_t ;
struct TYPE_18__ {int phys; scalar_t__ size; TYPE_7__* virt; } ;
typedef TYPE_11__ ocs_dma_t ;
typedef int int32_t ;


 void* FALSE ;
 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_BDE_TYPE_BLP ;
 int SLI4_CMD_FCP_ICMND64_WQE ;
 int SLI4_ELS_REQUEST64_CLASS_3 ;
 int SLI4_ELS_REQUEST64_CONTEXT_RPI ;
 int SLI4_WQE_FCP_ICMND64 ;
 void* TRUE ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_log_err (int ,char*,TYPE_11__*,TYPE_7__*) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_fcp_icmnd64_wqe(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *sgl,
      uint16_t xri, uint16_t tag, uint16_t cq_id,
      uint32_t rpi, ocs_remote_node_t *rnode, uint8_t timeout)
{
 sli4_fcp_icmnd64_wqe_t *icmnd = buf;
 sli4_sge_t *sge = ((void*)0);

 ocs_memset(buf, 0, size);

 if (!sgl || !sgl->virt) {
  ocs_log_err(sli4->os, "bad parameter sgl=%p virt=%p\n",
       sgl, sgl ? sgl->virt : ((void*)0));
  return -1;
 }
 sge = sgl->virt;

 if (sli4->config.sgl_pre_registered) {
  icmnd->xbl = FALSE;

  icmnd->dbde = TRUE;
  icmnd->bde.bde_type = SLI4_BDE_TYPE_BDE_64;

  icmnd->bde.buffer_length = sge[0].buffer_length;
  icmnd->bde.u.data.buffer_address_low = sge[0].buffer_address_low;
  icmnd->bde.u.data.buffer_address_high = sge[0].buffer_address_high;
 } else {
  icmnd->xbl = TRUE;

  icmnd->bde.bde_type = SLI4_BDE_TYPE_BLP;

  icmnd->bde.buffer_length = sgl->size;
  icmnd->bde.u.blp.sgl_segment_address_low = ocs_addr32_lo(sgl->phys);
  icmnd->bde.u.blp.sgl_segment_address_high = ocs_addr32_hi(sgl->phys);
 }

 icmnd->payload_offset_length = sge[0].buffer_length + sge[1].buffer_length;
 icmnd->xri_tag = xri;
 icmnd->context_tag = rpi;
 icmnd->timer = timeout;

 icmnd->pu = 2;
 icmnd->class = SLI4_ELS_REQUEST64_CLASS_3;
 icmnd->command = SLI4_WQE_FCP_ICMND64;
 icmnd->ct = SLI4_ELS_REQUEST64_CONTEXT_RPI;

 icmnd->abort_tag = xri;

 icmnd->request_tag = tag;
 icmnd->len_loc = 3;
 if (rnode->node_group) {
  icmnd->hlm = TRUE;
  icmnd->remote_n_port_id = rnode->fc_id & 0x00ffffff;
 }
 if (((ocs_node_t *)rnode->node)->fcp2device) {
  icmnd->erp = TRUE;
 }
 icmnd->cmd_type = SLI4_CMD_FCP_ICMND64_WQE;
 icmnd->cq_id = cq_id;

 return 0;
}
