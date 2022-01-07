
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int sscf; scalar_t__ enabled; int * lower; int * upper; } ;
typedef int node_p ;
typedef int * hook_p ;


 int EINVAL ;
 int LOG_ERR ;
 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 scalar_t__ SSCFU_RELEASED ;
 int log (int ,char*) ;
 int ng_rmnode_self (int ) ;
 scalar_t__ sscfu_getstate (int ) ;
 int sscfu_reset (int ) ;

__attribute__((used)) static int
ng_sscfu_disconnect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 struct priv *priv = NG_NODE_PRIVATE(node);

 if (hook == priv->upper)
  priv->upper = ((void*)0);
 else if (hook == priv->lower)
  priv->lower = ((void*)0);
 else {
  log(LOG_ERR, "bogus hook");
  return (EINVAL);
 }

 if (NG_NODE_NUMHOOKS(node) == 0) {
  if (NG_NODE_IS_VALID(node))
   ng_rmnode_self(node);
 } else {




  if (priv->lower == ((void*)0) &&
      priv->enabled &&
      sscfu_getstate(priv->sscf) != SSCFU_RELEASED)
   sscfu_reset(priv->sscf);
 }
 return (0);
}
