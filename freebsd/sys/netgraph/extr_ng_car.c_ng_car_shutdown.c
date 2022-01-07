
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
struct TYPE_7__ {int q_mtx; int q_callout; } ;
struct TYPE_6__ {int q_mtx; int q_callout; } ;
struct TYPE_8__ {int node; TYPE_2__ lower; TYPE_1__ upper; } ;


 int M_NETGRAPH ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_3__* const,int ) ;
 int mtx_destroy (int *) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static int
ng_car_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 ng_uncallout(&priv->upper.q_callout, node);
 ng_uncallout(&priv->lower.q_callout, node);
 mtx_destroy(&priv->upper.q_mtx);
 mtx_destroy(&priv->lower.q_mtx);
 NG_NODE_UNREF(priv->node);
 free(priv, M_NETGRAPH);
 return (0);
}
