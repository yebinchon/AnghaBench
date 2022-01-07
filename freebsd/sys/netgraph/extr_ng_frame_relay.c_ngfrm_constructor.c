
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
struct TYPE_4__ {int addrlen; int node; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ngfrm_constructor(node_p node)
{
 sc_p sc;

 sc = malloc(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);
 sc->addrlen = 2;


 NG_NODE_SET_PRIVATE(node, sc);
 sc->node = node;
 return (0);
}
