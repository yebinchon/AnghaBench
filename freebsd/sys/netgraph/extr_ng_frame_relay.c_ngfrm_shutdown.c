
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
 int free (int const,int ) ;

__attribute__((used)) static int
ngfrm_shutdown(node_p node)
{
 const sc_p sc = NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 free(sc, M_NETGRAPH);
 NG_NODE_UNREF(node);
 return (0);
}
