
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_atmllc_priv {int * fddi; int * ether; int * atm; } ;
typedef int node_p ;
typedef int * hook_p ;


 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct ng_atmllc_priv* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_atmllc_disconnect(hook_p hook)
{
 node_p node;
 struct ng_atmllc_priv *priv;

 node = NG_HOOK_NODE(hook);
 priv = NG_NODE_PRIVATE(node);

 if (hook == priv->atm) {
  priv->atm = ((void*)0);
 } else if (hook == priv->ether) {
  priv->ether = ((void*)0);
 } else if (hook == priv->fddi) {
  priv->fddi = ((void*)0);
 }

 if (NG_NODE_NUMHOOKS(node) == 0 && NG_NODE_IS_VALID(node)) {
  ng_rmnode_self(node);
 }

 return (0);
}
