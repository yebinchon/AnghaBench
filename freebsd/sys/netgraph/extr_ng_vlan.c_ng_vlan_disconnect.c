
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int * hook_p ;
struct TYPE_3__ {int ** vlan_hook; int * nomatch_hook; int * downstream_hook; } ;


 size_t EVL_VLANOFTAG (uintptr_t) ;
 scalar_t__ IS_HOOK_VLAN_SET (uintptr_t) ;
 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_HOOK_PRIVATE (int *) ;
 int NG_HOOK_SET_PRIVATE (int *,int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_vlan_disconnect(hook_p hook)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 uintptr_t hook_data;

 if (hook == priv->downstream_hook)
  priv->downstream_hook = ((void*)0);
 else if (hook == priv->nomatch_hook)
  priv->nomatch_hook = ((void*)0);
 else {

  hook_data = (uintptr_t)NG_HOOK_PRIVATE(hook);
  if (IS_HOOK_VLAN_SET(hook_data))
   priv->vlan_hook[EVL_VLANOFTAG(hook_data)] = ((void*)0);
 }
 NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0) &&
     (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
