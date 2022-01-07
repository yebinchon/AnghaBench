
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int request_id; int size; int sgl_off__opcode; } ;
union tw_cl_command_7k {TYPE_3__ generic; } ;
struct tw_cli_req_context {int request_id; TYPE_4__* cmd_pkt; int flags; int tw_cli_callback; struct tw_cl_req_packet* orig_req; struct tw_cl_req_handle* req_handle; } ;
struct tw_cli_ctlr_context {scalar_t__ device_id; int flags; scalar_t__ reset_in_progress; int * req_q_head; } ;
struct tw_cl_passthru_req_packet {int sgl_entries; int sg_list; scalar_t__ cmd_pkt; int cmd_pkt_length; } ;
struct TYPE_5__ {struct tw_cl_passthru_req_packet pt_req; } ;
struct tw_cl_req_packet {TYPE_1__ gen_req_pkt; } ;
struct tw_cl_req_handle {struct tw_cli_req_context* cl_req_ctxt; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
struct tw_cl_command_header {int dummy; } ;
struct tw_cl_command_9k {scalar_t__ sg_list; void* lun_h4__sgl_entries; void* lun_l4__req_id; } ;
struct TYPE_6__ {union tw_cl_command_7k cmd_pkt_7k; struct tw_cl_command_9k cmd_pkt_9k; } ;
struct TYPE_8__ {TYPE_2__ command; } ;
typedef struct tw_cli_req_context TW_VOID ;
typedef int TW_UINT8 ;
typedef struct tw_cli_req_context TW_UINT32 ;
typedef int TW_UINT16 ;
typedef int TW_INT32 ;


 int BUILD_LUN_H4__SGL_ENTRIES (int ,int) ;
 int BUILD_LUN_L4__REQ_ID (int ,int ) ;
 int GET_LUN_H4 (void*) ;
 int GET_LUN_L4 (void*) ;
 int GET_OPCODE (int) ;
 int GET_SGL_OFF (int ) ;
 int TWA_CONTROL_UNMASK_COMMAND_INTERRUPT ;
 int TWA_FW_CMD_EXECUTE_SCSI ;
 size_t TW_CLI_FREE_Q ;
 size_t TW_CLI_PENDING_Q ;
 int TW_CLI_REQ_FLAGS_9K ;
 int TW_CLI_REQ_FLAGS_PASSTHRU ;
 int TW_CLI_WRITE_CONTROL_REGISTER (struct tw_cl_ctlr_handle*,int ) ;
 int TW_CL_64BIT_ADDRESSES ;
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ;
 int TW_CL_ERR_REQ_SUCCESS ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 struct tw_cli_req_context* TW_CL_NULL ;
 struct tw_cli_req_context* TW_CL_Q_FIRST_ITEM (int *) ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 void* TW_CL_SWAP16 (int ) ;
 int TW_OSL_EBUSY ;
 int tw_cl_create_event (struct tw_cl_ctlr_handle*,int ,int ,int,int,int ,char*,char*,int ) ;
 int tw_cli_complete_io ;
 int tw_cli_dbg_printf (int,struct tw_cl_ctlr_handle*,int ,char*) ;
 int tw_cli_fill_sg_list (struct tw_cli_ctlr_context*,int ,struct tw_cli_req_context*,int) ;
 struct tw_cli_req_context* tw_cli_get_request (struct tw_cli_ctlr_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,size_t) ;
 int tw_cli_submit_cmd (struct tw_cli_req_context*) ;
 int tw_osl_cur_func () ;
 int tw_osl_memcpy (TYPE_4__*,scalar_t__,int ) ;

TW_INT32
tw_cl_fw_passthru(struct tw_cl_ctlr_handle *ctlr_handle,
 struct tw_cl_req_packet *req_pkt, struct tw_cl_req_handle *req_handle)
{
 struct tw_cli_ctlr_context *ctlr;
 struct tw_cli_req_context *req;
 union tw_cl_command_7k *cmd_7k;
 struct tw_cl_command_9k *cmd_9k;
 struct tw_cl_passthru_req_packet *pt_req;
 TW_UINT8 opcode;
 TW_UINT8 sgl_offset;
 TW_VOID *sgl = TW_CL_NULL;
 TW_INT32 error = TW_CL_ERR_REQ_SUCCESS;

 tw_cli_dbg_printf(5, ctlr_handle, tw_osl_cur_func(), "entered");

 ctlr = (struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);

 if ((req = tw_cli_get_request(ctlr
  )) == TW_CL_NULL) {
  tw_cli_dbg_printf(2, ctlr_handle, tw_osl_cur_func(),
   "Out of request context packets: returning busy");
  return(TW_OSL_EBUSY);
 }

 req_handle->cl_req_ctxt = req;
 req->req_handle = req_handle;
 req->orig_req = req_pkt;
 req->tw_cli_callback = tw_cli_complete_io;

 req->flags |= TW_CLI_REQ_FLAGS_PASSTHRU;

 pt_req = &(req_pkt->gen_req_pkt.pt_req);

 tw_osl_memcpy(req->cmd_pkt, pt_req->cmd_pkt,
  pt_req->cmd_pkt_length);

 if ((opcode = GET_OPCODE(((TW_UINT8 *)
  (pt_req->cmd_pkt))[sizeof(struct tw_cl_command_header)]))
   == TWA_FW_CMD_EXECUTE_SCSI) {
  TW_UINT16 lun_l4, lun_h4;

  tw_cli_dbg_printf(5, ctlr_handle, tw_osl_cur_func(),
   "passthru: 9k cmd pkt");
  req->flags |= TW_CLI_REQ_FLAGS_9K;
  cmd_9k = &(req->cmd_pkt->command.cmd_pkt_9k);
  lun_l4 = GET_LUN_L4(cmd_9k->lun_l4__req_id);
  lun_h4 = GET_LUN_H4(cmd_9k->lun_h4__sgl_entries);
  cmd_9k->lun_l4__req_id = TW_CL_SWAP16(
   BUILD_LUN_L4__REQ_ID(lun_l4, req->request_id));
  if (pt_req->sgl_entries) {
   cmd_9k->lun_h4__sgl_entries =
    TW_CL_SWAP16(BUILD_LUN_H4__SGL_ENTRIES(lun_h4,
     pt_req->sgl_entries));
   sgl = (TW_VOID *)(cmd_9k->sg_list);
  }
 } else {
  tw_cli_dbg_printf(5, ctlr_handle, tw_osl_cur_func(),
   "passthru: 7k cmd pkt");
  cmd_7k = &(req->cmd_pkt->command.cmd_pkt_7k);
  cmd_7k->generic.request_id =
   (TW_UINT8)(TW_CL_SWAP16(req->request_id));
  if ((sgl_offset =
   GET_SGL_OFF(cmd_7k->generic.sgl_off__opcode))) {
   if (ctlr->device_id == TW_CL_DEVICE_ID_9K_SA)
    sgl = (((TW_UINT32 *)cmd_7k) + cmd_7k->generic.size);
   else
    sgl = (((TW_UINT32 *)cmd_7k) + sgl_offset);
   cmd_7k->generic.size += pt_req->sgl_entries *
    ((ctlr->flags & TW_CL_64BIT_ADDRESSES) ? 3 : 2);
  }
 }

 if (sgl)
  tw_cli_fill_sg_list(ctlr, pt_req->sg_list,
   sgl, pt_req->sgl_entries);

 if (((TW_CL_Q_FIRST_ITEM(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) != TW_CL_NULL) ||
  (ctlr->reset_in_progress)) {
  tw_cli_req_q_insert_tail(req, TW_CLI_PENDING_Q);
  TW_CLI_WRITE_CONTROL_REGISTER(ctlr_handle,
   TWA_CONTROL_UNMASK_COMMAND_INTERRUPT);
 } else if ((error = tw_cli_submit_cmd(req))) {
  tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1100, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Failed to start passthru command",
   "error = %d", error);
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
 }
 return(error);
}
