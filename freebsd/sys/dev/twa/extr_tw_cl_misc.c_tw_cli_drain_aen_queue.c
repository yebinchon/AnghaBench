
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tw_cli_req_context {scalar_t__ state; scalar_t__ data; TYPE_3__* cmd_pkt; int ctlr; int error_code; struct tw_cli_req_context* tw_cli_callback; int flags; } ;
struct tw_cli_ctlr_context {void* internal_req_busy; int ctlr_handle; } ;
struct tw_cl_command_header {int dummy; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ cmd_pkt_9k; } ;
struct TYPE_6__ {struct tw_cl_command_header cmd_hdr; TYPE_2__ command; } ;
typedef scalar_t__ TW_UINT16 ;
typedef scalar_t__ TW_TIME ;
typedef int TW_INT32 ;


 scalar_t__ TWA_AEN_QUEUE_EMPTY ;
 scalar_t__ TWA_AEN_SYNC_TIME_WITH_HOST ;
 int TW_CLI_FREE_Q ;
 scalar_t__ TW_CLI_REQUEST_TIMEOUT_PERIOD ;
 int TW_CLI_REQ_FLAGS_INTERNAL ;
 scalar_t__ TW_CLI_REQ_STATE_BUSY ;
 scalar_t__ TW_CLI_REQ_STATE_COMPLETE ;
 scalar_t__ TW_CLI_REQ_STATE_PENDING ;
 void* TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR ;
 struct tw_cli_req_context* TW_CL_NULL ;
 int TW_OSL_EBUSY ;
 int TW_OSL_ETIMEDOUT ;
 int tw_cli_create_ctlr_event (struct tw_cli_ctlr_context*,int ,struct tw_cl_command_header*) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 struct tw_cli_req_context* tw_cli_get_request (struct tw_cli_ctlr_context*) ;
 scalar_t__ tw_cli_manage_aen (struct tw_cli_ctlr_context*,struct tw_cli_req_context*) ;
 int tw_cli_process_resp_intr (int ) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_cli_send_scsi_cmd (struct tw_cli_req_context*,int) ;
 int tw_osl_cur_func () ;
 scalar_t__ tw_osl_get_local_time () ;

TW_INT32
tw_cli_drain_aen_queue(struct tw_cli_ctlr_context *ctlr)
{
 struct tw_cli_req_context *req;
 struct tw_cl_command_header *cmd_hdr;
 TW_TIME end_time;
 TW_UINT16 aen_code;
 TW_INT32 error;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 for (;;) {
  if ((req = tw_cli_get_request(ctlr
   )) == TW_CL_NULL) {
   error = TW_OSL_EBUSY;
   break;
  }

  req->flags |= TW_CLI_REQ_FLAGS_INTERNAL;
  req->tw_cli_callback = TW_CL_NULL;
  if ((error = tw_cli_send_scsi_cmd(req,
    0x03 ))) {
   tw_cli_dbg_printf(1, ctlr->ctlr_handle,
    tw_osl_cur_func(),
    "Cannot send command to fetch aen");
   break;
  }

  end_time = tw_osl_get_local_time() +
   TW_CLI_REQUEST_TIMEOUT_PERIOD;
  do {
   if ((error = req->error_code))





    goto out;

   tw_cli_process_resp_intr(req->ctlr);

   if ((req->state != TW_CLI_REQ_STATE_BUSY) &&
    (req->state != TW_CLI_REQ_STATE_PENDING))
    break;
  } while (tw_osl_get_local_time() <= end_time);

  if (req->state != TW_CLI_REQ_STATE_COMPLETE) {
   error = TW_OSL_ETIMEDOUT;
   break;
  }

  if ((error = req->cmd_pkt->command.cmd_pkt_9k.status)) {
   cmd_hdr = &req->cmd_pkt->cmd_hdr;





   break;
  }

  aen_code = tw_cli_manage_aen(ctlr, req);
  if (aen_code == TWA_AEN_QUEUE_EMPTY)
   break;
  if (aen_code == TWA_AEN_SYNC_TIME_WITH_HOST)
   continue;

  ctlr->internal_req_busy = TW_CL_FALSE;
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
 }

out:
 if (req) {
  if (req->data)
   ctlr->internal_req_busy = TW_CL_FALSE;
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
 }
 return(error);
}
