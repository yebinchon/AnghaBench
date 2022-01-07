
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; } ;
union tw_cl_command_7k {TYPE_3__ param; } ;
struct tw_cli_req_context {TYPE_2__* cmd_pkt; int error_code; struct tw_cli_ctlr_context* ctlr; } ;
struct tw_cli_ctlr_context {int ctlr_handle; void* get_more_aens; int reset_in_progress; void* internal_req_busy; } ;
struct TYPE_4__ {union tw_cl_command_7k cmd_pkt_7k; } ;
struct TYPE_5__ {int cmd_hdr; TYPE_1__ command; } ;
typedef int TW_VOID ;
typedef scalar_t__ TW_INT32 ;


 int TW_CLI_FREE_Q ;
 void* TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int tw_cl_create_event (int ,void*,int ,int,int,int ,char*,char*,scalar_t__) ;
 int tw_cli_create_ctlr_event (struct tw_cli_ctlr_context*,int ,int *) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 scalar_t__ tw_cli_get_aen (struct tw_cli_ctlr_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_param_callback(struct tw_cli_req_context *req)
{
 struct tw_cli_ctlr_context *ctlr = req->ctlr;
 union tw_cl_command_7k *cmd =
  &(req->cmd_pkt->command.cmd_pkt_7k);
 TW_INT32 error;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");





 if (! req->error_code)
  if (cmd->param.status) {





   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1204, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "get/set_param failed",
    "status = %d", cmd->param.status);
  }

 ctlr->internal_req_busy = TW_CL_FALSE;
 tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);

 if ((ctlr->get_more_aens) && (!(ctlr->reset_in_progress))) {
  ctlr->get_more_aens = TW_CL_FALSE;
  tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(),
   "Fetching more AEN's");
  if ((error = tw_cli_get_aen(ctlr)))
   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1205, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Failed to fetch all AEN's from param_callback",
    "error = %d", error);
 }
}
