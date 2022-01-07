
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {int failAlg; int xmitAlg; } ;
struct TYPE_6__ {int node; TYPE_1__ conf; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int NG_ONE2MANY_FAIL_MANUAL ;
 int NG_ONE2MANY_XMIT_ROUNDROBIN ;
 TYPE_2__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_one2many_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);
 priv->conf.xmitAlg = NG_ONE2MANY_XMIT_ROUNDROBIN;
 priv->conf.failAlg = NG_ONE2MANY_FAIL_MANUAL;


 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;


 return (0);
}
