
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int token; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct TYPE_8__ {int idtype; int lcid; } ;
typedef TYPE_3__ ng_l2cap_l2ca_discon_ip ;
typedef TYPE_4__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_9__ {TYPE_2__* rt; int idtype; int cid; int pcb_mtx; } ;
struct TYPE_7__ {int * hook; } ;


 int ENETDOWN ;
 int ENOMEM ;
 int MA_OWNED ;
 int M_NOWAIT ;
 int NGM_L2CAP_COOKIE ;
 int NGM_L2CAP_L2CA_DISCON ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;
 int mtx_assert (int *,int ) ;
 int ng_btsocket_l2cap_node ;

__attribute__((used)) static int
ng_btsocket_l2cap_send_l2ca_discon_req(u_int32_t token,
  ng_btsocket_l2cap_pcb_p pcb)
{
 struct ng_mesg *msg = ((void*)0);
 ng_l2cap_l2ca_discon_ip *ip = ((void*)0);
 int error = 0;

 mtx_assert(&pcb->pcb_mtx, MA_OWNED);

 if (pcb->rt == ((void*)0) ||
     pcb->rt->hook == ((void*)0) || NG_HOOK_NOT_VALID(pcb->rt->hook))
  return (ENETDOWN);

 NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE, NGM_L2CAP_L2CA_DISCON,
  sizeof(*ip), M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 msg->header.token = token;

 ip = (ng_l2cap_l2ca_discon_ip *)(msg->data);
 ip->lcid = pcb->cid;
 ip->idtype = pcb->idtype;

 NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_node, msg,pcb->rt->hook, 0);

 return (error);
}
