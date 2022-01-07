
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int hook_p ;
struct TYPE_5__ {int if_vnet; } ;
struct TYPE_4__ {TYPE_2__* ifp; int link_status; int * ether; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int IFM_ACTIVE ;
 int LINK_STATE_DOWN ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int if_link_state_change (TYPE_2__*,int ) ;

__attribute__((used)) static int
ng_eiface_disconnect(hook_p hook)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 priv->ether = ((void*)0);
 priv->link_status &= ~IFM_ACTIVE;
 CURVNET_SET_QUIET(priv->ifp->if_vnet);
 if_link_state_change(priv->ifp, LINK_STATE_DOWN);
 CURVNET_RESTORE();
 return (0);
}
