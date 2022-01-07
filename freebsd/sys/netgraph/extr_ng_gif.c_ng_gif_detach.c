
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int * node_p ;
struct TYPE_3__ {int * ifp; } ;


 int * IFP2NG (struct ifnet*) ;
 int IFP2NG_SET (struct ifnet*,int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int * const) ;
 int NG_NODE_REALLY_DIE (int * const) ;
 int ng_rmnode_self (int * const) ;

__attribute__((used)) static void
ng_gif_detach(struct ifnet *ifp)
{
 const node_p node = IFP2NG(ifp);
 priv_p priv;

 if (node == ((void*)0))
  return;
 priv = NG_NODE_PRIVATE(node);
 NG_NODE_REALLY_DIE(node);





 IFP2NG_SET(ifp, ((void*)0));
 priv->ifp = ((void*)0);
 ng_rmnode_self(node);
}
