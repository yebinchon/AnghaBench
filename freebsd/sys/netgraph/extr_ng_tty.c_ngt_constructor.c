
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
struct TYPE_6__ {int ifq_mtx; } ;
struct TYPE_5__ {TYPE_4__ outq; int node; } ;


 int IFQ_SET_MAXLEN (TYPE_4__*,int ) ;
 int MTX_DEF ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int ifqmaxlen ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
ngt_constructor(node_p node)
{
 sc_p sc;


 sc = malloc(sizeof(*sc), M_NETGRAPH, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, sc);
 sc->node = node;

 mtx_init(&sc->outq.ifq_mtx, "ng_tty node+queue", ((void*)0), MTX_DEF);
 IFQ_SET_MAXLEN(&sc->outq, ifqmaxlen);

 return (0);
}
