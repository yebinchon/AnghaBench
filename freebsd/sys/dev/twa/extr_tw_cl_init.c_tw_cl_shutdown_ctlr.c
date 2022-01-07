
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int io_lock; int gen_lock; int active; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef int TW_UINT32 ;
typedef int TW_INT32 ;


 int TWA_SHUTDOWN_MESSAGE_CREDITS ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_NULL ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_CL_STOP_CTLR_ONLY ;
 int tw_cl_create_event (struct tw_cl_ctlr_handle*,int ,int ,int,int,int ,char*,char*,int ) ;
 int tw_cli_dbg_printf (int,struct tw_cl_ctlr_handle*,int ,char*) ;
 int tw_cli_disable_interrupts (struct tw_cli_ctlr_context*) ;
 int tw_cli_init_connection (struct tw_cli_ctlr_context*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tw_osl_cur_func () ;
 int tw_osl_destroy_lock (struct tw_cl_ctlr_handle*,int ) ;

TW_INT32
tw_cl_shutdown_ctlr(struct tw_cl_ctlr_handle *ctlr_handle, TW_UINT32 flags)
{
 struct tw_cli_ctlr_context *ctlr =
  (struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
 TW_INT32 error;

 tw_cli_dbg_printf(3, ctlr_handle, tw_osl_cur_func(), "entered");




 ctlr->active = TW_CL_FALSE;

 tw_cli_disable_interrupts(ctlr);


 if ((error = tw_cli_init_connection(ctlr, TWA_SHUTDOWN_MESSAGE_CREDITS,
   0, 0, 0, 0, 0, TW_CL_NULL, TW_CL_NULL, TW_CL_NULL,
   TW_CL_NULL, TW_CL_NULL)))
  tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1015, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Can't close connection with controller",
   "error = %d", error);

 if (flags & TW_CL_STOP_CTLR_ONLY)
  goto ret;


 tw_osl_destroy_lock(ctlr_handle, ctlr->gen_lock);
 tw_osl_destroy_lock(ctlr_handle, ctlr->io_lock);

ret:
 return(error);
}
