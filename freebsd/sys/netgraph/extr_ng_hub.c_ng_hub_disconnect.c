
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int hook_p ;
struct TYPE_3__ {int persistent; } ;


 int NG_HOOK_NODE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_hub_disconnect(hook_p hook)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 if (NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0 &&
     NG_NODE_IS_VALID(NG_HOOK_NODE(hook)) && !priv->persistent)
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
