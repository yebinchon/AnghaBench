
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
typedef scalar_t__ hook_p ;
struct TYPE_2__ {scalar_t__ drv; scalar_t__ acl; scalar_t__ sco; scalar_t__ raw; int state; int node; } ;


 int NG_HCI_UNIT_CONNECTED ;
 int NG_HOOK_NODE (scalar_t__) ;
 int NG_HOOK_SET_RCVDATA (scalar_t__,int ) ;
 int NG_HOOK_SET_RCVMSG (scalar_t__,int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_hci_acl_rcvdata ;
 int ng_hci_node_is_up ;
 int ng_hci_raw_rcvdata ;
 int ng_hci_sco_rcvdata ;
 int ng_hci_upper_rcvmsg ;
 int ng_send_fn (int ,scalar_t__,int ,int *,int ) ;

__attribute__((used)) static int
ng_hci_connect(hook_p hook)
{
 ng_hci_unit_p unit = (ng_hci_unit_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 if (hook != unit->drv) {
  if (hook == unit->acl) {
   NG_HOOK_SET_RCVMSG(hook, ng_hci_upper_rcvmsg);
   NG_HOOK_SET_RCVDATA(hook, ng_hci_acl_rcvdata);
  } else if (hook == unit->sco) {
   NG_HOOK_SET_RCVMSG(hook, ng_hci_upper_rcvmsg);
   NG_HOOK_SET_RCVDATA(hook, ng_hci_sco_rcvdata);
  } else
   NG_HOOK_SET_RCVDATA(hook, ng_hci_raw_rcvdata);


  if (hook != unit->raw)
   ng_send_fn(unit->node, hook, ng_hci_node_is_up, ((void*)0),0);
 } else
  unit->state |= NG_HCI_UNIT_CONNECTED;

 return (0);
}
