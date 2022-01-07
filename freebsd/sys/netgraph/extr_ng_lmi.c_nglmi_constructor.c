
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
struct TYPE_4__ {int liv_rate; int liv_per_full; int protoname; int handle; int node; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NAME_NONE ;
 int NG_LMI_KEEPALIVE_RATE ;
 int NG_LMI_SEQ_PER_FULL ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
nglmi_constructor(node_p node)
{
 sc_p sc;

 sc = malloc(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, sc);
 sc->node = node;

 ng_callout_init(&sc->handle);
 sc->protoname = NAME_NONE;
 sc->liv_per_full = NG_LMI_SEQ_PER_FULL;
 sc->liv_rate = NG_LMI_KEEPALIVE_RATE;
 return (0);
}
