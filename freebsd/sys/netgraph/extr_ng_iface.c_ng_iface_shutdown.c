
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_8__ {int if_vnet; } ;
struct TYPE_7__ {int lock; int unit; TYPE_2__* ifp; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int M_NETGRAPH_IFACE ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int V_ng_iface_unit ;
 int bpfdetach (TYPE_2__*) ;
 int free (TYPE_1__* const,int ) ;
 int free_unr (int ,int ) ;
 int if_detach (TYPE_2__*) ;
 int if_free (TYPE_2__*) ;
 int rm_destroy (int *) ;

__attribute__((used)) static int
ng_iface_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);





 CURVNET_SET_QUIET(priv->ifp->if_vnet);
 bpfdetach(priv->ifp);
 if_detach(priv->ifp);
 if_free(priv->ifp);
 CURVNET_RESTORE();
 priv->ifp = ((void*)0);
 free_unr(V_ng_iface_unit, priv->unit);
 rm_destroy(&priv->lock);
 free(priv, M_NETGRAPH_IFACE);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
