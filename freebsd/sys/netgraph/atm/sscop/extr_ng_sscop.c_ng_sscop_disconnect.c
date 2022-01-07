
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int sscop; scalar_t__ enabled; int * lower; int * upper; int * manage; } ;
typedef int node_p ;
typedef int * hook_p ;


 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 scalar_t__ SSCOP_IDLE ;
 int SSCOP_RELEASE_request ;
 int ng_rmnode_self (int ) ;
 int sscop_aasig (int ,int ,int *,int ) ;
 scalar_t__ sscop_getstate (int ) ;

__attribute__((used)) static int
ng_sscop_disconnect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 struct priv *priv = NG_NODE_PRIVATE(node);

 if(hook == priv->upper)
  priv->upper = ((void*)0);
 else if(hook == priv->lower)
  priv->lower = ((void*)0);
 else if(hook == priv->manage)
  priv->manage = ((void*)0);

 if(NG_NODE_NUMHOOKS(node) == 0) {
  if(NG_NODE_IS_VALID(node))
   ng_rmnode_self(node);
 } else {




  if(priv->upper == ((void*)0) && priv->lower != ((void*)0) &&
     priv->enabled &&
     sscop_getstate(priv->sscop) != SSCOP_IDLE) {
   sscop_aasig(priv->sscop, SSCOP_RELEASE_request,
       ((void*)0), 0);
  }
 }
 return 0;
}
