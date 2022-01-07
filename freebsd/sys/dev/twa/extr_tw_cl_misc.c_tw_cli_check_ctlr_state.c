
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {scalar_t__ device_id; struct tw_cl_ctlr_handle* ctlr_handle; int reset_in_progress; int reset_phase1_in_progress; } ;
struct tw_cl_ctlr_handle {int dummy; } ;
typedef int TW_UINT32 ;
typedef int TW_INT8 ;
typedef int TW_INT32 ;


 int TWA_CONTROL_CLEAR_PARITY_ERROR ;
 int TWA_CONTROL_CLEAR_PCI_ABORT ;
 int TWA_CONTROL_CLEAR_QUEUE_ERROR ;
 int TWA_PCI_CONFIG_CLEAR_PARITY_ERROR ;
 int TWA_PCI_CONFIG_CLEAR_PCI_ABORT ;
 int TWA_STATUS_MICROCONTROLLER_READY ;
 int TWA_STATUS_PCI_ABORT_INTERRUPT ;
 int TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT ;
 int TWA_STATUS_QUEUE_ERROR_INTERRUPT ;
 int TWA_STATUS_UNEXPECTED_BITS ;
 int TW_CLI_PCI_CONFIG_STATUS_OFFSET ;
 int TW_CLI_WRITE_CONTROL_REGISTER (struct tw_cl_ctlr_handle*,int ) ;
 scalar_t__ TW_CL_DEVICE_ID_9K_E ;
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSL_EGENFAILURE ;
 int TW_OSL_ESUCCESS ;
 int tw_cl_create_event (struct tw_cl_ctlr_handle*,int ,int ,int,int,int ,char*,char*,int,int ) ;
 int tw_cli_dbg_printf (int,struct tw_cl_ctlr_handle*,int ,char*) ;
 int tw_cli_describe_bits (int,int *) ;
 int tw_osl_cur_func () ;
 int tw_osl_memzero (int *,int) ;
 int tw_osl_write_pci_config (struct tw_cl_ctlr_handle*,int ,int ,int) ;

TW_INT32
tw_cli_check_ctlr_state(struct tw_cli_ctlr_context *ctlr, TW_UINT32 status_reg)
{
 struct tw_cl_ctlr_handle *ctlr_handle = ctlr->ctlr_handle;
 TW_INT32 error = TW_OSL_ESUCCESS;

 tw_cli_dbg_printf(8, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");


 if (!(status_reg & TWA_STATUS_MICROCONTROLLER_READY)) {
  TW_INT8 desc[200];

  tw_osl_memzero(desc, 200);
  if (!(ctlr->reset_phase1_in_progress)) {
   tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
    0x1301, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Missing expected status bit(s)",
    "status reg = 0x%x; Missing bits: %s",
    status_reg,
    tw_cli_describe_bits(
     TWA_STATUS_MICROCONTROLLER_READY,
     desc));
   error = TW_OSL_EGENFAILURE;
  }
 }


 if ((status_reg & TWA_STATUS_UNEXPECTED_BITS) != 0) {
  TW_INT8 desc[200];

  tw_osl_memzero(desc, 200);


  if (((ctlr->device_id != TW_CL_DEVICE_ID_9K_E) &&
       (ctlr->device_id != TW_CL_DEVICE_ID_9K_SA)) ||
      (!(ctlr->reset_in_progress)) ||
      ((status_reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT) == 0))
  tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
   0x1302, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Unexpected status bit(s)",
   "status reg = 0x%x Unexpected bits: %s",
   status_reg & TWA_STATUS_UNEXPECTED_BITS,
   tw_cli_describe_bits(status_reg &
    TWA_STATUS_UNEXPECTED_BITS, desc));

  if (status_reg & TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT) {
   tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
    0x1303, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "PCI parity error: clearing... "
    "Re-seat/move/replace card",
    "status reg = 0x%x %s",
    status_reg,
    tw_cli_describe_bits(status_reg, desc));
   TW_CLI_WRITE_CONTROL_REGISTER(ctlr->ctlr_handle,
    TWA_CONTROL_CLEAR_PARITY_ERROR);







  }

  if (status_reg & TWA_STATUS_PCI_ABORT_INTERRUPT) {
   tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
    0x1304, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "PCI abort: clearing... ",
    "status reg = 0x%x %s",
    status_reg,
    tw_cli_describe_bits(status_reg, desc));
   TW_CLI_WRITE_CONTROL_REGISTER(ctlr->ctlr_handle,
    TWA_CONTROL_CLEAR_PCI_ABORT);







  }

  if (status_reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT) {

   if (((ctlr->device_id != TW_CL_DEVICE_ID_9K_E) &&
        (ctlr->device_id != TW_CL_DEVICE_ID_9K_SA)) ||
       (!(ctlr->reset_in_progress)))
    tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
         TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
         0x1305, 0x1, TW_CL_SEVERITY_ERROR_STRING,
         "Controller queue error: clearing... ",
         "status reg = 0x%x %s",
         status_reg,
         tw_cli_describe_bits(status_reg, desc));
   TW_CLI_WRITE_CONTROL_REGISTER(ctlr->ctlr_handle,
    TWA_CONTROL_CLEAR_QUEUE_ERROR);
  }
 }
 return(error);
}
