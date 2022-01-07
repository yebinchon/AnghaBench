
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_atmllc_priv {int dummy; } ;
typedef int node_p ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,struct ng_atmllc_priv*) ;
 struct ng_atmllc_priv* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_atmllc_constructor(node_p node)
{
 struct ng_atmllc_priv *priv;

 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);
 NG_NODE_SET_PRIVATE(node, priv);

 return (0);
}
