
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int timeout; int cs_ctl; scalar_t__ offset; int ox_id; } ;
struct TYPE_18__ {TYPE_3__ fcp_tgt; scalar_t__ fcp_rsp_len; scalar_t__ data; int flags; } ;
struct TYPE_14__ {int phys; TYPE_6__* virt; } ;
struct TYPE_17__ {int wire_len; scalar_t__ tmf_cmd; int sgl_count; int timeout; TYPE_6__ iparam; int cs_ctl; int init_task_tag; TYPE_2__* sgl; TYPE_1__ rspbuf; void* scsi_tgt_cb_arg; int scsi_tgt_cb; int hio_type; int hw_dif; struct TYPE_17__* ocs; struct TYPE_17__* node; } ;
typedef TYPE_4__ ocs_t ;
typedef int ocs_scsi_tmf_resp_e ;
typedef int ocs_scsi_io_cb_t ;
typedef TYPE_4__ ocs_io_t ;
typedef int int32_t ;
typedef TYPE_6__ fcp_rsp_iu_t ;
struct TYPE_19__ {int rsp_code; int addl_rsp_info; } ;
typedef TYPE_7__ fcp_rsp_info_t ;
struct TYPE_15__ {int len; scalar_t__ dif_addr; int addr; } ;


 int FCP_RSP_LEN_VALID ;
 int FCP_TMF_COMPLETE ;
 int FCP_TMF_FAILED ;
 int FCP_TMF_INCORRECT_LUN ;
 int FCP_TMF_REJECTED ;
 int FCP_TMF_SUCCEEDED ;
 int OCS_HW_IO_TARGET_RSP ;
 scalar_t__ OCS_SCSI_TMF_ABORT_TASK ;






 int ocs_assert (TYPE_4__*,int) ;
 int ocs_htobe32 (int) ;
 int ocs_memcpy (int ,int *,int) ;
 int ocs_memset (TYPE_6__*,int ,int) ;
 int ocs_scsi_convert_dif_info (TYPE_4__*,int *,int *) ;
 int ocs_scsi_io_dispatch (TYPE_4__*,int ) ;
 int ocs_target_io_cb ;
 int ocs_target_send_bls_resp (TYPE_4__*,int ,void*) ;

int32_t
ocs_scsi_send_tmf_resp(ocs_io_t *io, ocs_scsi_tmf_resp_e rspcode, uint8_t addl_rsp_info[3],
  ocs_scsi_io_cb_t cb, void *arg)
{
 int32_t rc = -1;
 ocs_t *ocs = ((void*)0);
 fcp_rsp_iu_t *fcprsp = ((void*)0);
 fcp_rsp_info_t *rspinfo = ((void*)0);
 uint8_t fcp_rspcode;

 ocs_assert(io, -1);
 ocs_assert(io->ocs, -1);
 ocs_assert(io->node, -1);

 ocs = io->ocs;

 io->wire_len = 0;
 ocs_scsi_convert_dif_info(ocs, ((void*)0), &io->hw_dif);

 switch(rspcode) {
 case 133:
  fcp_rspcode = FCP_TMF_COMPLETE;
  break;
 case 130:
 case 132:
  fcp_rspcode = FCP_TMF_SUCCEEDED;
  break;
 case 131:
  fcp_rspcode = FCP_TMF_REJECTED;
  break;
 case 129:
  fcp_rspcode = FCP_TMF_INCORRECT_LUN;
  break;
 case 128:
  fcp_rspcode = FCP_TMF_FAILED;
  break;
 default:
  fcp_rspcode = FCP_TMF_REJECTED;
  break;
 }

 io->hio_type = OCS_HW_IO_TARGET_RSP;

 io->scsi_tgt_cb = cb;
 io->scsi_tgt_cb_arg = arg;

 if (io->tmf_cmd == OCS_SCSI_TMF_ABORT_TASK) {
  rc = ocs_target_send_bls_resp(io, cb, arg);
  return rc;
 }


 fcprsp = io->rspbuf.virt;
 ocs_memset(fcprsp, 0, sizeof(*fcprsp));

 fcprsp->flags |= FCP_RSP_LEN_VALID;

 rspinfo = (fcp_rsp_info_t*) fcprsp->data;
 if (addl_rsp_info != ((void*)0)) {
  ocs_memcpy(rspinfo->addl_rsp_info, addl_rsp_info, sizeof(rspinfo->addl_rsp_info));
 }
 rspinfo->rsp_code = fcp_rspcode;

 io->wire_len = sizeof(*fcprsp) - sizeof(fcprsp->data) + sizeof(*rspinfo);

 *((uint32_t*)fcprsp->fcp_rsp_len) = ocs_htobe32(sizeof(*rspinfo));

 io->sgl[0].addr = io->rspbuf.phys;
 io->sgl[0].dif_addr = 0;
 io->sgl[0].len = io->wire_len;
 io->sgl_count = 1;

 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.fcp_tgt.ox_id = io->init_task_tag;
 io->iparam.fcp_tgt.offset = 0;
 io->iparam.fcp_tgt.cs_ctl = io->cs_ctl;
 io->iparam.fcp_tgt.timeout = io->timeout;

 rc = ocs_scsi_io_dispatch(io, ocs_target_io_cb);

 return rc;
}
