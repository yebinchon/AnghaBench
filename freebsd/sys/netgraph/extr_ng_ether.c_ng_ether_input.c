
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int * lower; } ;


 int IFP2NG (struct ifnet*) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;

__attribute__((used)) static void
ng_ether_input(struct ifnet *ifp, struct mbuf **mp)
{
 const node_p node = IFP2NG(ifp);
 const priv_p priv = NG_NODE_PRIVATE(node);
 int error;


 if (priv->lower == ((void*)0))
  return;
 NG_SEND_DATA_ONLY(error, priv->lower, *mp);
}
