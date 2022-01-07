
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int reset_needed; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef int TW_VOID ;


 int TW_CL_TRUE ;

TW_VOID
tw_cl_set_reset_needed(struct tw_cl_ctlr_handle *ctlr_handle)
{
 struct tw_cli_ctlr_context *ctlr =
  (struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);

 ctlr->reset_needed = TW_CL_TRUE;
}
