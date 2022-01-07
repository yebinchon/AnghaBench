
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
struct TYPE_8__ {TYPE_3__* const history; } ;
struct TYPE_7__ {TYPE_3__* const history; } ;
struct TYPE_9__ {TYPE_2__ recv; TYPE_1__ xmit; } ;


 int M_NETGRAPH_MPPC ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bzero (TYPE_3__* const,int) ;
 int free (TYPE_3__* const,int ) ;

__attribute__((used)) static int
ng_mppc_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 bzero(priv, sizeof(*priv));
 free(priv, M_NETGRAPH_MPPC);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
