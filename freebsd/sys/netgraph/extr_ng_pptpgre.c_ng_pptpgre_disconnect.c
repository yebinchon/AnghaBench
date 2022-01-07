
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef TYPE_3__* hpriv_p ;
typedef int * hook_p ;
struct TYPE_11__ {int mtx; } ;
struct TYPE_9__ {int * hook; } ;
struct TYPE_10__ {int * lower; TYPE_1__ uppersess; int * upper; } ;


 int LIST_REMOVE (TYPE_3__* const,int ) ;
 int M_NETGRAPH ;
 int NG_HOOK_NODE (int *) ;
 TYPE_3__* NG_HOOK_PRIVATE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int free (TYPE_3__* const,int ) ;
 int mtx_destroy (int *) ;
 int ng_pptpgre_reset (TYPE_3__* const) ;
 int ng_rmnode_self (int const) ;
 int sessions ;

__attribute__((used)) static int
ng_pptpgre_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 const hpriv_p hpriv = NG_HOOK_PRIVATE(hook);


 if (hook == priv->upper) {
  priv->upper = ((void*)0);
  priv->uppersess.hook = ((void*)0);
 } else if (hook == priv->lower) {
  priv->lower = ((void*)0);
 } else {

  ng_pptpgre_reset(hpriv);

  LIST_REMOVE(hpriv, sessions);
  mtx_destroy(&hpriv->mtx);
  free(hpriv, M_NETGRAPH);
 }


 if ((NG_NODE_NUMHOOKS(node) == 0)
 && (NG_NODE_IS_VALID(node)))
  ng_rmnode_self(node);
 return (0);
}
