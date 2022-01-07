
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* sc_p ;
typedef int node_p ;
struct TYPE_4__ {void* amru; void* smru; int accm; } ;
struct TYPE_5__ {int node; TYPE_1__ cfg; void* sbuf; void* abuf; int amode; } ;


 int ASYNC_BUF_SIZE (void*) ;
 int MODE_HUNT ;
 int M_NETGRAPH_ASYNC ;
 int M_WAITOK ;
 int M_ZERO ;
 void* NG_ASYNC_DEFAULT_MRU ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int SYNC_BUF_SIZE (void*) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static int
nga_constructor(node_p node)
{
 sc_p sc;

 sc = malloc(sizeof(*sc), M_NETGRAPH_ASYNC, M_WAITOK | M_ZERO);
 sc->amode = MODE_HUNT;
 sc->cfg.accm = ~0;
 sc->cfg.amru = NG_ASYNC_DEFAULT_MRU;
 sc->cfg.smru = NG_ASYNC_DEFAULT_MRU;
 sc->abuf = malloc(ASYNC_BUF_SIZE(sc->cfg.smru),
     M_NETGRAPH_ASYNC, M_WAITOK);
 sc->sbuf = malloc(SYNC_BUF_SIZE(sc->cfg.amru),
     M_NETGRAPH_ASYNC, M_WAITOK);
 NG_NODE_SET_PRIVATE(node, sc);
 sc->node = node;
 return (0);
}
