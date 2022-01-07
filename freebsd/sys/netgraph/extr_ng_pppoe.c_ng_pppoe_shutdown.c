
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_6__ {int node; TYPE_1__* sesshash; } ;
struct TYPE_5__ {int mtx; } ;


 int M_NETGRAPH_PPPOE ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int SESSHASHSIZE ;
 int free (TYPE_2__* const,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
ng_pppoe_shutdown(node_p node)
{
 const priv_p privp = NG_NODE_PRIVATE(node);
 int i;

 for (i = 0; i < SESSHASHSIZE; i++)
     mtx_destroy(&privp->sesshash[i].mtx);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(privp->node);
 free(privp, M_NETGRAPH_PPPOE);
 return (0);
}
