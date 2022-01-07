
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_mesg {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef scalar_t__ hook_p ;
struct TYPE_3__ {scalar_t__ ethernet_hook; int node; } ;


 int ENOBUFS ;
 int M_NOWAIT ;
 int NGM_ETHER_COOKIE ;
 int NGM_ETHER_GET_ENADDR ;
 int NG_HOOK_NODE (scalar_t__) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int ,int ) ;
 int NG_NODE_ID (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_PEER_NODE (scalar_t__) ;
 int NG_SEND_MSG_ID (int,int ,struct ng_mesg*,int ,int ) ;

__attribute__((used)) static int
ng_pppoe_connect(hook_p hook)
{
 const priv_p privp = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct ng_mesg *msg;
 int error;

 if (hook != privp->ethernet_hook)
  return (0);





 NG_MKMESSAGE(msg, NGM_ETHER_COOKIE, NGM_ETHER_GET_ENADDR, 0, M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOBUFS);





 NG_SEND_MSG_ID(error, privp->node, msg,
     NG_NODE_ID(NG_PEER_NODE(privp->ethernet_hook)),
     NG_NODE_ID(privp->node));

 return (error);
}
