
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_mesg {scalar_t__ data; } ;
struct TYPE_4__ {int status; int bdaddr; int link_type; } ;
typedef TYPE_1__ ng_hci_lp_con_rsp_ep ;
typedef TYPE_2__* ng_btsocket_sco_rtentry_p ;
typedef int bdaddr_p ;
struct TYPE_5__ {int * hook; } ;


 int ENETDOWN ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGM_HCI_COOKIE ;
 int NGM_HCI_LP_CON_RSP ;
 int NG_HCI_LINK_SCO ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;
 int bcopy (int ,int *,int) ;
 int ng_btsocket_sco_node ;

__attribute__((used)) static int
ng_btsocket_sco_send_lp_con_rsp(ng_btsocket_sco_rtentry_p rt, bdaddr_p dst, int status)
{
 struct ng_mesg *msg = ((void*)0);
 ng_hci_lp_con_rsp_ep *ep = ((void*)0);
 int error = 0;

 if (rt == ((void*)0) || rt->hook == ((void*)0) || NG_HOOK_NOT_VALID(rt->hook))
  return (ENETDOWN);

 NG_MKMESSAGE(msg, NGM_HCI_COOKIE, NGM_HCI_LP_CON_RSP,
  sizeof(*ep), M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 ep = (ng_hci_lp_con_rsp_ep *)(msg->data);
 ep->status = status;
 ep->link_type = NG_HCI_LINK_SCO;
 bcopy(dst, &ep->bdaddr, sizeof(ep->bdaddr));

 NG_SEND_MSG_HOOK(error, ng_btsocket_sco_node, msg, rt->hook, 0);

 return (error);
}
