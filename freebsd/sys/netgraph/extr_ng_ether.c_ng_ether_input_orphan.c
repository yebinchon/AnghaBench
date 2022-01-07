
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int * orphan; } ;


 int IFP2NG (struct ifnet*) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ng_ether_input_orphan(struct ifnet *ifp, struct mbuf *m)
{
 const node_p node = IFP2NG(ifp);
 const priv_p priv = NG_NODE_PRIVATE(node);
 int error;


 if (priv->orphan == ((void*)0)) {
  m_freem(m);
  return;
 }
 NG_SEND_DATA_ONLY(error, priv->orphan, m);
}
