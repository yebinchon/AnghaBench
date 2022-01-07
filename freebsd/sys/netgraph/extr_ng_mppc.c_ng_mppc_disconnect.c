
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_6__ {int * hook; } ;
struct TYPE_5__ {int * hook; } ;
struct TYPE_7__ {TYPE_2__ recv; TYPE_1__ xmit; } ;


 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 TYPE_3__* NG_NODE_PRIVATE (int const) ;
 int ng_rmnode_self (int const) ;

__attribute__((used)) static int
ng_mppc_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);


 if (hook == priv->xmit.hook)
  priv->xmit.hook = ((void*)0);
 if (hook == priv->recv.hook)
  priv->recv.hook = ((void*)0);


 if ((NG_NODE_NUMHOOKS(node) == 0)
 && NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);
 return (0);
}
