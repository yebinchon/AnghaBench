
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef int TW_VOID ;
typedef int TW_UINT8 ;
typedef int TW_INT8 ;
typedef scalar_t__ TW_INT32 ;


 int TWA_PARAM_CONTROLLER_PORT_COUNT ;
 int TWA_PARAM_CONTROLLER_TABLE ;
 int TWA_PARAM_CTLR_MODEL ;
 int TWA_PARAM_VERSION_BIOS ;
 int TWA_PARAM_VERSION_FW ;
 int TWA_PARAM_VERSION_TABLE ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 scalar_t__ TW_CL_NULL ;
 int TW_CL_SEVERITY_INFO_STRING ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,int *,int ,int *,int *) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 scalar_t__ tw_cli_get_param (struct tw_cli_ctlr_context*,int ,int ,int *,int,scalar_t__) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_notify_ctlr_info(struct tw_cli_ctlr_context *ctlr)
{
 TW_INT8 fw_ver[16];
 TW_INT8 bios_ver[16];
 TW_INT8 ctlr_model[16];
 TW_INT32 error[3];
 TW_UINT8 num_ports = 0;

 tw_cli_dbg_printf(5, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");


 error[0] = tw_cli_get_param(ctlr, TWA_PARAM_CONTROLLER_TABLE,
   TWA_PARAM_CONTROLLER_PORT_COUNT, &num_ports,
   1, TW_CL_NULL);


 error[0] = tw_cli_get_param(ctlr, TWA_PARAM_VERSION_TABLE,
   TWA_PARAM_VERSION_FW, fw_ver, 16, TW_CL_NULL);
 error[1] = tw_cli_get_param(ctlr, TWA_PARAM_VERSION_TABLE,
   TWA_PARAM_VERSION_BIOS, bios_ver, 16, TW_CL_NULL);
 error[2] = tw_cli_get_param(ctlr, TWA_PARAM_VERSION_TABLE,
   TWA_PARAM_CTLR_MODEL, ctlr_model, 16, TW_CL_NULL);

 tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
  0x1300, 0x3, TW_CL_SEVERITY_INFO_STRING,
  "Controller details:",
  "Model %.16s, %d ports, Firmware %.16s, BIOS %.16s",
  error[2]?(TW_INT8 *)TW_CL_NULL:ctlr_model,
  num_ports,
  error[0]?(TW_INT8 *)TW_CL_NULL:fw_ver,
  error[1]?(TW_INT8 *)TW_CL_NULL:bios_ver);
}
