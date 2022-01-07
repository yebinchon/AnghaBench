
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
struct TYPE_5__ {struct TYPE_5__* const sbuf; struct TYPE_5__* const abuf; } ;


 int M_NETGRAPH_ASYNC ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bzero (TYPE_1__* const,int) ;
 int free (TYPE_1__* const,int ) ;

__attribute__((used)) static int
nga_shutdown(node_p node)
{
 const sc_p sc = NG_NODE_PRIVATE(node);

 free(sc->abuf, M_NETGRAPH_ASYNC);
 free(sc->sbuf, M_NETGRAPH_ASYNC);
 bzero(sc, sizeof(*sc));
 free(sc, M_NETGRAPH_ASYNC);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
