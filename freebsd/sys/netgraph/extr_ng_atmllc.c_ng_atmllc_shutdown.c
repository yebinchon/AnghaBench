
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_atmllc_priv {int dummy; } ;
typedef int node_p ;


 int M_NETGRAPH ;
 struct ng_atmllc_priv* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (struct ng_atmllc_priv*,int ) ;

__attribute__((used)) static int
ng_atmllc_shutdown(node_p node)
{
 struct ng_atmllc_priv *priv;

 priv = NG_NODE_PRIVATE(node);

 free(priv, M_NETGRAPH);

 NG_NODE_UNREF(node);

 return (0);
}
