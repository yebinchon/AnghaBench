
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int token; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct TYPE_6__ {int ident; int lcid; int linktype; int result; scalar_t__ status; int bdaddr; } ;
typedef TYPE_2__ ng_l2cap_l2ca_con_rsp_ip ;
typedef TYPE_3__* ng_btsocket_l2cap_rtentry_p ;
typedef int bdaddr_p ;
struct TYPE_7__ {int * hook; } ;


 int ENETDOWN ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGM_L2CAP_COOKIE ;
 int NGM_L2CAP_L2CA_CON_RSP ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;
 int bcopy (int ,int *,int) ;
 int ng_btsocket_l2cap_node ;

__attribute__((used)) static int
ng_btsocket_l2cap_send_l2ca_con_rsp_req(u_int32_t token,
  ng_btsocket_l2cap_rtentry_p rt, bdaddr_p dst, int ident,
     int lcid, int result, int linktype)
{
 struct ng_mesg *msg = ((void*)0);
 ng_l2cap_l2ca_con_rsp_ip *ip = ((void*)0);
 int error = 0;

 if (rt == ((void*)0) || rt->hook == ((void*)0) || NG_HOOK_NOT_VALID(rt->hook))
  return (ENETDOWN);

 NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE, NGM_L2CAP_L2CA_CON_RSP,
  sizeof(*ip), M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 msg->header.token = token;

 ip = (ng_l2cap_l2ca_con_rsp_ip *)(msg->data);
 bcopy(dst, &ip->bdaddr, sizeof(ip->bdaddr));
 ip->ident = ident;
 ip->lcid = lcid;
 ip->linktype = linktype;
 ip->result = result;
 ip->status = 0;

 NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_node, msg, rt->hook, 0);

 return (error);
}
