
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int * req_q_head; } ;
typedef int TW_VOID ;
typedef size_t TW_UINT8 ;


 int TW_CLI_Q_INIT (struct tw_cli_ctlr_context*,size_t) ;
 int TW_CL_Q_INIT (int *) ;

__attribute__((used)) static __inline TW_VOID
tw_cli_req_q_init(struct tw_cli_ctlr_context *ctlr, TW_UINT8 q_type)
{
 TW_CL_Q_INIT(&(ctlr->req_q_head[q_type]));
 TW_CLI_Q_INIT(ctlr, q_type);
}
