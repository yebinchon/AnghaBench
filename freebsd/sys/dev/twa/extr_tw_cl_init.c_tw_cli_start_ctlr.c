
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; void* fw_on_ctlr_build; void* fw_on_ctlr_branch; void* fw_on_ctlr_srl; int operating_mode; void* working_build; void* working_branch; void* working_srl; scalar_t__ arch_id; scalar_t__ max_simult_reqs; } ;
typedef int TW_UINT32 ;
typedef void* TW_UINT16 ;
typedef int TW_INT32 ;


 void* TWA_BASE_FW_BRANCH ;
 void* TWA_BASE_FW_BUILD ;
 void* TWA_BASE_FW_SRL ;
 int TWA_BASE_MODE ;
 int TWA_CTLR_FW_COMPATIBLE ;
 int TWA_CTLR_FW_SAME_OR_NEWER ;
 void* TWA_CURRENT_FW_BRANCH (scalar_t__) ;
 void* TWA_CURRENT_FW_BUILD (scalar_t__) ;
 void* TWA_CURRENT_FW_SRL ;
 int TWA_EXTENDED_INIT_CONNECT ;
 int TWA_STATUS_MICROCONTROLLER_READY ;
 int TW_CLI_REQUEST_TIMEOUT_PERIOD ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_CL_SEVERITY_WARNING_STRING ;
 int TW_OSL_ESUCCESS ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,...) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_drain_aen_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_drain_response_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_enable_interrupts (struct tw_cli_ctlr_context*) ;
 int tw_cli_init_connection (struct tw_cli_ctlr_context*,void*,int ,void*,void*,void*,void*,void**,void**,void**,void**,int*) ;
 int tw_cli_poll_status (struct tw_cli_ctlr_context*,int ,int ) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cli_start_ctlr(struct tw_cli_ctlr_context *ctlr)
{
 TW_UINT16 fw_on_ctlr_srl = 0;
 TW_UINT16 fw_on_ctlr_arch_id = 0;
 TW_UINT16 fw_on_ctlr_branch = 0;
 TW_UINT16 fw_on_ctlr_build = 0;
 TW_UINT32 init_connect_result = 0;
 TW_INT32 error = TW_OSL_ESUCCESS;

 tw_cli_dbg_printf(3, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");


 if ((error = tw_cli_poll_status(ctlr,
   TWA_STATUS_MICROCONTROLLER_READY,
   TW_CLI_REQUEST_TIMEOUT_PERIOD))) {
  tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1009, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Microcontroller not ready",
   "error = %d", error);
  return(error);
 }

 if ((error = tw_cli_drain_response_queue(ctlr))) {
  tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x100A, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Can't drain response queue",
   "error = %d", error);
  return(error);
 }

 if ((error = tw_cli_init_connection(ctlr,
   (TW_UINT16)(ctlr->max_simult_reqs),
   TWA_EXTENDED_INIT_CONNECT, TWA_CURRENT_FW_SRL,
   (TW_UINT16)(ctlr->arch_id),
   TWA_CURRENT_FW_BRANCH(ctlr->arch_id),
   TWA_CURRENT_FW_BUILD(ctlr->arch_id),
   &fw_on_ctlr_srl, &fw_on_ctlr_arch_id,
   &fw_on_ctlr_branch, &fw_on_ctlr_build,
   &init_connect_result))) {
  tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x100B, 0x2, TW_CL_SEVERITY_WARNING_STRING,
   "Can't initialize connection in current mode",
   "error = %d", error);
  return(error);
 }
 {



  if (init_connect_result & TWA_CTLR_FW_COMPATIBLE) {

   if (init_connect_result & TWA_CTLR_FW_SAME_OR_NEWER) {
    ctlr->working_srl = TWA_CURRENT_FW_SRL;
    ctlr->working_branch =
     TWA_CURRENT_FW_BRANCH(ctlr->arch_id);
    ctlr->working_build =
     TWA_CURRENT_FW_BUILD(ctlr->arch_id);
   } else {
    ctlr->working_srl = fw_on_ctlr_srl;
    ctlr->working_branch = fw_on_ctlr_branch;
    ctlr->working_build = fw_on_ctlr_build;
   }
  } else {




   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1010, 0x2, TW_CL_SEVERITY_WARNING_STRING,
    "Driver/Firmware mismatch. "
    "Negotiating for base level...",
    " ");
   if ((error = tw_cli_init_connection(ctlr,
     (TW_UINT16)(ctlr->max_simult_reqs),
     TWA_EXTENDED_INIT_CONNECT,
     TWA_BASE_FW_SRL,
     (TW_UINT16)(ctlr->arch_id),
     TWA_BASE_FW_BRANCH, TWA_BASE_FW_BUILD,
     &fw_on_ctlr_srl, &fw_on_ctlr_arch_id,
     &fw_on_ctlr_branch, &fw_on_ctlr_build,
     &init_connect_result))) {
    tw_cl_create_event(ctlr->ctlr_handle,
     TW_CL_FALSE,
     TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
     0x1011, 0x1,
     TW_CL_SEVERITY_ERROR_STRING,
     "Can't initialize connection in "
     "base mode",
     " ");
    return(error);
   }
   if (!(init_connect_result & TWA_CTLR_FW_COMPATIBLE)) {





    return(1);
   }




   ctlr->working_srl = TWA_BASE_FW_SRL;
   ctlr->working_branch = TWA_BASE_FW_BRANCH;
   ctlr->working_build = TWA_BASE_FW_BUILD;
   ctlr->operating_mode = TWA_BASE_MODE;
  }
  ctlr->fw_on_ctlr_srl = fw_on_ctlr_srl;
  ctlr->fw_on_ctlr_branch = fw_on_ctlr_branch;
  ctlr->fw_on_ctlr_build = fw_on_ctlr_build;
 }


 if ((error = tw_cli_drain_aen_queue(ctlr)))




  tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1014, 0x2, TW_CL_SEVERITY_WARNING_STRING,
   "Can't drain AEN queue",
   "error = %d", error);


 tw_cli_enable_interrupts(ctlr);

 return(TW_OSL_ESUCCESS);
}
