
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int active; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef int TW_INT32 ;



TW_INT32
tw_cl_is_active(struct tw_cl_ctlr_handle *ctlr_handle)
{
 struct tw_cli_ctlr_context *ctlr =
  (struct tw_cli_ctlr_context *)
  (ctlr_handle->cl_ctlr_ctxt);

  return(ctlr->active);
}
