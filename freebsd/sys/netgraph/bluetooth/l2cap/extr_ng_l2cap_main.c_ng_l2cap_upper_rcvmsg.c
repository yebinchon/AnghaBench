
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typecookie; int cmd; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int node_p ;
typedef int ng_l2cap_p ;
typedef int item_p ;
typedef int hook_p ;


 struct ng_mesg* NGI_MSG (int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_l2cap_default_rcvmsg (int ,int ,int ) ;
 int ng_l2cap_l2ca_cfg_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_cfg_rsp_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_con_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_con_rsp_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_discon_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_enable_clt (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_get_info_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_grp_add_member_req (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_grp_close (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_grp_create (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_grp_get_members (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_grp_rem_member (int ,struct ng_mesg*) ;
 int ng_l2cap_l2ca_ping_req (int ,struct ng_mesg*) ;

__attribute__((used)) static int
ng_l2cap_upper_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(node);
 struct ng_mesg *msg = NGI_MSG(item);
 int error = 0;

 switch (msg->header.typecookie) {
 case 141:
  switch (msg->header.cmd) {

  case 138:
   error = ng_l2cap_l2ca_con_req(l2cap, msg);
   break;


  case 137:
   error = ng_l2cap_l2ca_con_rsp_req(l2cap, msg);
   break;


  case 140:
   error = ng_l2cap_l2ca_cfg_req(l2cap, msg);
   break;


  case 139:
   error = ng_l2cap_l2ca_cfg_rsp_req(l2cap, msg);
   break;


  case 136:
   error = ng_l2cap_l2ca_discon_req(l2cap, msg);
   break;


  case 131:
   error = ng_l2cap_l2ca_grp_create(l2cap, msg);
   break;


  case 132:
   error = ng_l2cap_l2ca_grp_close(l2cap, msg);
   break;


  case 133:
   error = ng_l2cap_l2ca_grp_add_member_req(l2cap, msg);
   break;


  case 129:
   error = ng_l2cap_l2ca_grp_rem_member(l2cap, msg);
   break;


  case 130:
   error = ng_l2cap_l2ca_grp_get_members(l2cap, msg);
   break;


  case 128:
   error = ng_l2cap_l2ca_ping_req(l2cap, msg);
   break;


  case 134:
   error = ng_l2cap_l2ca_get_info_req(l2cap, msg);
   break;


  case 135:
   error = ng_l2cap_l2ca_enable_clt(l2cap, msg);
   break;

  default:
   return (ng_l2cap_default_rcvmsg(node, item, lasthook));

  }
  break;

 default:
  return (ng_l2cap_default_rcvmsg(node, item, lasthook));

 }

 NG_FREE_ITEM(item);

 return (error);
}
