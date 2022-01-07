
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef TYPE_2__* iface_p ;
typedef int * hook_p ;
struct TYPE_6__ {int * out; int * hook; } ;
struct TYPE_5__ {int * export9; int exp_callout; int * export; } ;


 int NG_HOOK_NODE (int *) ;
 TYPE_2__* NG_HOOK_PRIVATE (int *) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int callout_drain (int *) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_netflow_disconnect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 priv_p priv = NG_NODE_PRIVATE(node);
 iface_p iface = NG_HOOK_PRIVATE(hook);

 if (iface != ((void*)0)) {
  if (iface->hook == hook)
   iface->hook = ((void*)0);
  if (iface->out == hook)
   iface->out = ((void*)0);
 }


 if (hook == priv->export) {
  if (priv->export9 == ((void*)0))
   callout_drain(&priv->exp_callout);
  priv->export = ((void*)0);
 }

 if (hook == priv->export9) {
  if (priv->export == ((void*)0))
   callout_drain(&priv->exp_callout);
  priv->export9 = ((void*)0);
 }


 if (NG_NODE_NUMHOOKS(node) == 0)
  ng_rmnode_self(node);

 return (0);
}
