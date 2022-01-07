
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int val; } ;
struct ecore_ilt_client_cfg {TYPE_1__ p_size; } ;
struct ecore_hwfn {TYPE_3__* p_cxt_mngr; } ;
typedef enum ilt_clients { ____Placeholder_ilt_clients } ilt_clients ;
struct TYPE_6__ {struct ecore_ilt_client_cfg* clients; TYPE_2__* conn_cfg; } ;
struct TYPE_5__ {int cid_count; } ;


 scalar_t__ CONN_CXT_SIZE (struct ecore_hwfn*) ;
 int ILT_CLI_CDUC ;
 int ILT_PAGE_IN_BYTES (int ) ;
 size_t PROTOCOLID_ROCE ;

__attribute__((used)) static u32 ecore_ilt_get_dynamic_line_cnt(struct ecore_hwfn *p_hwfn,
       enum ilt_clients ilt_client)
{
 u32 cid_count = p_hwfn->p_cxt_mngr->conn_cfg[PROTOCOLID_ROCE].cid_count;
 struct ecore_ilt_client_cfg *p_cli;
 u32 lines_to_skip = 0;
 u32 cxts_per_p;



 if (ilt_client == ILT_CLI_CDUC) {
  p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUC];

  cxts_per_p = ILT_PAGE_IN_BYTES(p_cli->p_size.val) /
        (u32)CONN_CXT_SIZE(p_hwfn);

  lines_to_skip = cid_count / cxts_per_p;
 }

 return lines_to_skip;
}
