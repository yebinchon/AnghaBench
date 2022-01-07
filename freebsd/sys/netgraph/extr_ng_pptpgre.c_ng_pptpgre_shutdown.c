
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_7__ {int mtx; } ;
struct TYPE_6__ {TYPE_2__ uppersess; } ;


 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_NETGRAPH ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_1__* const,int ) ;
 int mtx_destroy (int *) ;
 int ng_pptpgre_reset (TYPE_2__*) ;
 int sessions ;

__attribute__((used)) static int
ng_pptpgre_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);


 ng_pptpgre_reset(&priv->uppersess);

 LIST_REMOVE(&priv->uppersess, sessions);
 mtx_destroy(&priv->uppersess.mtx);

 free(priv, M_NETGRAPH);


 NG_NODE_UNREF(node);
 return (0);
}
