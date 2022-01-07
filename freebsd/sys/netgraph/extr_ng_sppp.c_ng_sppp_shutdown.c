
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int unit; int ifp; } ;


 int M_NETGRAPH_SPPP ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bpfdetach (int ) ;
 int free (TYPE_1__* const,int ) ;
 int if_detach (int ) ;
 int if_free (int ) ;
 int ng_sppp_free_unit (int ) ;
 int sppp_detach (int ) ;

__attribute__((used)) static int
ng_sppp_shutdown (node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 bpfdetach (priv->ifp);
 sppp_detach (priv->ifp);
 if_detach (priv->ifp);
 if_free(priv->ifp);
 ng_sppp_free_unit (priv->unit);
 free (priv, M_NETGRAPH_SPPP);
 NG_NODE_SET_PRIVATE (node, ((void*)0));
 NG_NODE_UNREF (node);
 return (0);
}
