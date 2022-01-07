
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef int TW_VOID ;
typedef scalar_t__ TW_INT32 ;


 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 scalar_t__ TW_OSL_EBUSY ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,scalar_t__) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 scalar_t__ tw_cli_get_aen (struct tw_cli_ctlr_context*) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_process_attn_intr(struct tw_cli_ctlr_context *ctlr)
{
 TW_INT32 error;

 tw_cli_dbg_printf(6, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 if ((error = tw_cli_get_aen(ctlr))) {







  if (error != TW_OSL_EBUSY)
   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1200, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Failed to fetch AEN",
    "error = %d", error);
 }
}
