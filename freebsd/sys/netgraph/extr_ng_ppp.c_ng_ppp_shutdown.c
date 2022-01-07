
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {int xmtx; int rmtx; } ;


 int M_NETGRAPH_PPP ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bzero (TYPE_1__* const,int) ;
 int free (TYPE_1__* const,int ) ;
 int mtx_destroy (int *) ;
 int ng_ppp_frag_reset (int ) ;
 int ng_ppp_stop_frag_timer (int ) ;

__attribute__((used)) static int
ng_ppp_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);


 ng_ppp_stop_frag_timer(node);


 ng_ppp_frag_reset(node);
 mtx_destroy(&priv->rmtx);
 mtx_destroy(&priv->xmtx);
 bzero(priv, sizeof(*priv));
 free(priv, M_NETGRAPH_PPP);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
