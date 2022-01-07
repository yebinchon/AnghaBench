
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_5__ {int ** hooks; TYPE_1__* links; } ;
struct TYPE_4__ {int * hook; } ;


 int NG_HOOK_NODE (int ) ;
 int NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int ng_ppp_update (int const,int ) ;
 int ng_rmnode_self (int const) ;

__attribute__((used)) static int
ng_ppp_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 const int index = (intptr_t)NG_HOOK_PRIVATE(hook);


 if (index < 0)
  priv->links[~index].hook = ((void*)0);
 else
  priv->hooks[index] = ((void*)0);


 if (NG_NODE_NUMHOOKS(node) > 0)
  ng_ppp_update(node, 0);
 else if (NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);

 return (0);
}
