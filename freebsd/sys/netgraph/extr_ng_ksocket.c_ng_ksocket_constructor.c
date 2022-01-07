
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int node; int embryos; } ;


 int ENOMEM ;
 int LIST_INIT (int *) ;
 int M_NETGRAPH_KSOCKET ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_ksocket_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH_KSOCKET, M_NOWAIT | M_ZERO);
 if (priv == ((void*)0))
  return (ENOMEM);

 LIST_INIT(&priv->embryos);

 priv->node = node;
 NG_NODE_SET_PRIVATE(node, priv);


 return (0);
}
