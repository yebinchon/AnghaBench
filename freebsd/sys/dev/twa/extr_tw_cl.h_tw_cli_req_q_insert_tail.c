
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {int link; struct tw_cli_ctlr_context* ctlr; } ;
struct tw_cli_ctlr_context {int gen_lock; int ctlr_handle; int * req_q_head; } ;
typedef int TW_VOID ;
typedef size_t TW_UINT8 ;


 int TW_CLI_Q_INSERT (struct tw_cli_ctlr_context*,size_t) ;
 int TW_CL_Q_INSERT_TAIL (int *,int *) ;
 int tw_osl_free_lock (int ,int ) ;
 int tw_osl_get_lock (int ,int ) ;

__attribute__((used)) static __inline TW_VOID
tw_cli_req_q_insert_tail(struct tw_cli_req_context *req, TW_UINT8 q_type)
{
 struct tw_cli_ctlr_context *ctlr = req->ctlr;

 tw_osl_get_lock(ctlr->ctlr_handle, ctlr->gen_lock);
 TW_CL_Q_INSERT_TAIL(&(ctlr->req_q_head[q_type]), &(req->link));
 TW_CLI_Q_INSERT(ctlr, q_type);
 tw_osl_free_lock(ctlr->ctlr_handle, ctlr->gen_lock);
}
