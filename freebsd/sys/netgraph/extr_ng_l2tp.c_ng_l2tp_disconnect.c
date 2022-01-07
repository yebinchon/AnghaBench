
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hookpriv_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * lower; int * ctrl; } ;


 int LIST_REMOVE (int const,int ) ;
 int M_NETGRAPH_L2TP ;
 int NG_HOOK_NODE (int *) ;
 int NG_HOOK_PRIVATE (int *) ;
 int NG_HOOK_SET_PRIVATE (int *,int *) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int free (int const,int ) ;
 int ng_rmnode_self (int const) ;
 int sessions ;

__attribute__((used)) static int
ng_l2tp_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);


 if (hook == priv->ctrl)
  priv->ctrl = ((void*)0);
 else if (hook == priv->lower)
  priv->lower = ((void*)0);
 else {
  const hookpriv_p hpriv = NG_HOOK_PRIVATE(hook);
  LIST_REMOVE(hpriv, sessions);
  free(hpriv, M_NETGRAPH_L2TP);
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 }


 if (NG_NODE_NUMHOOKS(node) == 0 && NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);
 return (0);
}
