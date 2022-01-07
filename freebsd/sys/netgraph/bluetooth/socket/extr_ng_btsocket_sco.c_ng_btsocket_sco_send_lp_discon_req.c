
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ng_mesg {scalar_t__ data; } ;
struct TYPE_6__ {int reason; int con_handle; } ;
typedef TYPE_2__ ng_hci_lp_discon_req_ep ;
typedef TYPE_3__* ng_btsocket_sco_pcb_p ;
struct TYPE_7__ {TYPE_1__* rt; int con_handle; int pcb_mtx; } ;
struct TYPE_5__ {int * hook; } ;


 int ENETDOWN ;
 int ENOMEM ;
 int MA_OWNED ;
 int M_NOWAIT ;
 int NGM_HCI_COOKIE ;
 int NGM_HCI_LP_DISCON_REQ ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;
 int mtx_assert (int *,int ) ;
 int ng_btsocket_sco_node ;

__attribute__((used)) static int
ng_btsocket_sco_send_lp_discon_req(ng_btsocket_sco_pcb_p pcb)
{
 struct ng_mesg *msg = ((void*)0);
 ng_hci_lp_discon_req_ep *ep = ((void*)0);
 int error = 0;

 mtx_assert(&pcb->pcb_mtx, MA_OWNED);

 if (pcb->rt == ((void*)0) ||
     pcb->rt->hook == ((void*)0) || NG_HOOK_NOT_VALID(pcb->rt->hook))
  return (ENETDOWN);

 NG_MKMESSAGE(msg, NGM_HCI_COOKIE, NGM_HCI_LP_DISCON_REQ,
  sizeof(*ep), M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 ep = (ng_hci_lp_discon_req_ep *)(msg->data);
 ep->con_handle = pcb->con_handle;
 ep->reason = 0x13;

 NG_SEND_MSG_HOOK(error, ng_btsocket_sco_node, msg, pcb->rt->hook, 0);

 return (error);
}
