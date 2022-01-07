
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_p ;
typedef int ng_hci_unit_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_3__ {int typecookie; int cmd; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 TYPE_2__* NGI_MSG (int ) ;





 int NG_NODE_PRIVATE (int ) ;
 int ng_hci_default_rcvmsg (int ,int ,int ) ;
 int ng_hci_lp_con_req (int ,int ,int ) ;
 int ng_hci_lp_con_rsp (int ,int ,int ) ;
 int ng_hci_lp_discon_req (int ,int ,int ) ;
 int ng_hci_lp_qos_req (int ,int ,int ) ;

__attribute__((used)) static int
ng_hci_upper_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 ng_hci_unit_p unit = (ng_hci_unit_p) NG_NODE_PRIVATE(node);
 int error = 0;

 switch (NGI_MSG(item)->header.typecookie) {
 case 132:
  switch (NGI_MSG(item)->header.cmd) {
  case 131:
   error = ng_hci_lp_con_req(unit, item, lasthook);
   break;

  case 129:
   error = ng_hci_lp_discon_req(unit, item, lasthook);
   break;

  case 130:
   error = ng_hci_lp_con_rsp(unit, item, lasthook);
   break;

  case 128:
   error = ng_hci_lp_qos_req(unit, item, lasthook);
   break;

  default:
   error = ng_hci_default_rcvmsg(node, item, lasthook);
   break;
  }
  break;

 default:
  error = ng_hci_default_rcvmsg(node, item, lasthook);
  break;
 }

 return (error);
}
