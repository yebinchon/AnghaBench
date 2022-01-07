
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* sc_p ;
typedef int node_p ;
struct TYPE_5__ {int ifq_maxlen; } ;
struct TYPE_6__ {int intr_ch; TYPE_1__ snd_queue; int node; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 TYPE_2__* malloc (int,int ,int) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ng_source_constructor(node_p node)
{
 sc_p sc;

 sc = malloc(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, sc);
 sc->node = node;
 sc->snd_queue.ifq_maxlen = 2048;
 ng_callout_init(&sc->intr_ch);

 return (0);
}
