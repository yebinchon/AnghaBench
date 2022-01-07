
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int priv_p ;
typedef int node_p ;


 int M_NETGRAPH ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (int const,int ) ;

__attribute__((used)) static int
ng_split_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 free(priv, M_NETGRAPH);

 return (0);
}
