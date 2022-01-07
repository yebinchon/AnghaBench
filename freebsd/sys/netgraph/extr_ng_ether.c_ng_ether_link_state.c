
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_mesg {int dummy; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int * orphan; int * lower; } ;


 int IFP2NG (struct ifnet*) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int M_NOWAIT ;
 int NGM_FLOW_COOKIE ;
 int NGM_LINK_IS_DOWN ;
 int NGM_LINK_IS_UP ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int,int ,int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int NG_SEND_MSG_HOOK (int,int const,struct ng_mesg*,int *,int ) ;

__attribute__((used)) static void
ng_ether_link_state(struct ifnet *ifp, int state)
{
 const node_p node = IFP2NG(ifp);
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg;
 int cmd, dummy_error = 0;

 if (state == LINK_STATE_UP)
  cmd = NGM_LINK_IS_UP;
 else if (state == LINK_STATE_DOWN)
  cmd = NGM_LINK_IS_DOWN;
 else
  return;

 if (priv->lower != ((void*)0)) {
  NG_MKMESSAGE(msg, NGM_FLOW_COOKIE, cmd, 0, M_NOWAIT);
  if (msg != ((void*)0))
   NG_SEND_MSG_HOOK(dummy_error, node, msg, priv->lower, 0);
 }
 if (priv->orphan != ((void*)0)) {
  NG_MKMESSAGE(msg, NGM_FLOW_COOKIE, cmd, 0, M_NOWAIT);
  if (msg != ((void*)0))
   NG_SEND_MSG_HOOK(dummy_error, node, msg, priv->orphan, 0);
 }
}
