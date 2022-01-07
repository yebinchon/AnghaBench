
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int * upper; } ;


 int IFP2NG (struct ifnet*) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int NG_OUTBOUND_THREAD_REF () ;
 int NG_OUTBOUND_THREAD_UNREF () ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;

__attribute__((used)) static int
ng_ether_output(struct ifnet *ifp, struct mbuf **mp)
{
 const node_p node = IFP2NG(ifp);
 const priv_p priv = NG_NODE_PRIVATE(node);
 int error = 0;


 if (priv->upper == ((void*)0))
  return (0);


 NG_OUTBOUND_THREAD_REF();
 NG_SEND_DATA_ONLY(error, priv->upper, *mp);
 NG_OUTBOUND_THREAD_UNREF();
 return (error);
}
