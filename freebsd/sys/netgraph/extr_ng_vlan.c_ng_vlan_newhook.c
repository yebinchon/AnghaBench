
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {void* nomatch_hook; void* downstream_hook; } ;


 int NG_HOOK_SET_PRIVATE (void*,int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_VLAN_HOOK_DOWNSTREAM ;
 int NG_VLAN_HOOK_NOMATCH ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_vlan_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_VLAN_HOOK_DOWNSTREAM) == 0)
  priv->downstream_hook = hook;
 else if (strcmp(name, NG_VLAN_HOOK_NOMATCH) == 0)
  priv->nomatch_hook = hook;
 else {




 }
 NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 return (0);
}
