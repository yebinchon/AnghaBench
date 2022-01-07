
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int if_vnet; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int unit; int media; struct ifnet* ifp; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int M_NETGRAPH ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int V_ng_eiface_unit ;
 int ether_ifdetach (struct ifnet* const) ;
 int free (TYPE_1__* const,int ) ;
 int free_unr (int ,int ) ;
 int if_free (struct ifnet* const) ;
 int ifmedia_removeall (int *) ;

__attribute__((used)) static int
ng_eiface_rmnode(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ifnet *const ifp = priv->ifp;





 CURVNET_SET_QUIET(ifp->if_vnet);
 ifmedia_removeall(&priv->media);
 ether_ifdetach(ifp);
 if_free(ifp);
 CURVNET_RESTORE();
 free_unr(V_ng_eiface_unit, priv->unit);
 free(priv, M_NETGRAPH);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
