
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_vnet; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_3__ {int link_status; int * ether; struct ifnet* ifp; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int EISCONN ;
 int EPFNOSUPPORT ;
 int IFM_ACTIVE ;
 int LINK_STATE_UP ;
 int NG_EIFACE_HOOK_ETHER ;
 int NG_HOOK_SET_PRIVATE (int *,int **) ;
 int NG_HOOK_SET_TO_INBOUND (int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int if_link_state_change (struct ifnet*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_eiface_newhook(node_p node, hook_p hook, const char *name)
{
 priv_p priv = NG_NODE_PRIVATE(node);
 struct ifnet *ifp = priv->ifp;

 if (strcmp(name, NG_EIFACE_HOOK_ETHER))
  return (EPFNOSUPPORT);
 if (priv->ether != ((void*)0))
  return (EISCONN);
 priv->ether = hook;
 NG_HOOK_SET_PRIVATE(hook, &priv->ether);
 NG_HOOK_SET_TO_INBOUND(hook);

 priv->link_status |= IFM_ACTIVE;
 CURVNET_SET_QUIET(ifp->if_vnet);
 if_link_state_change(ifp, LINK_STATE_UP);
 CURVNET_RESTORE();

 return (0);
}
