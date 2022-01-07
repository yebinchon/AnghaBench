
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_p ;
typedef int node_p ;


 int M_NETGRAPH ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (int ,int ) ;
 int ng_source_clr_data (int ) ;
 int ng_source_stop (int ) ;

__attribute__((used)) static int
ng_source_rmnode(node_p node)
{
 sc_p sc = NG_NODE_PRIVATE(node);

 ng_source_stop(sc);
 ng_source_clr_data(sc);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 free(sc, M_NETGRAPH);

 return (0);
}
