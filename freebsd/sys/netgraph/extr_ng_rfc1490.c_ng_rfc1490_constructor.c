
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int enc; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ng_rfc1490_encaps ;

__attribute__((used)) static int
ng_rfc1490_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);


 priv->enc = ng_rfc1490_encaps;

 NG_NODE_SET_PRIVATE(node, priv);


 return (0);
}
