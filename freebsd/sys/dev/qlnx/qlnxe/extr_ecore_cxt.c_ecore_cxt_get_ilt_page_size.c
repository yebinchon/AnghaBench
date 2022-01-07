
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int val; } ;
struct ecore_ilt_client_cfg {TYPE_1__ p_size; } ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {struct ecore_ilt_client_cfg* clients; } ;
typedef enum ilt_clients { ____Placeholder_ilt_clients } ilt_clients ;


 int ILT_PAGE_IN_BYTES (int ) ;

u32 ecore_cxt_get_ilt_page_size(struct ecore_hwfn *p_hwfn,
    enum ilt_clients ilt_client)
{
 struct ecore_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 struct ecore_ilt_client_cfg *p_cli = &p_mngr->clients[ilt_client];

 return ILT_PAGE_IN_BYTES(p_cli->p_size.val);
}
