
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_4__ {scalar_t__ enable; } ;
struct TYPE_5__ {TYPE_1__ cfg; int cx; scalar_t__ compress; } ;


 int NG_HOOK_NODE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int deflateEnd (int *) ;
 int inflateEnd (int *) ;
 int ng_rmnode_self (int const) ;

__attribute__((used)) static int
ng_deflate_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (priv->cfg.enable) {
     if (priv->compress)
  deflateEnd(&priv->cx);
     else
  inflateEnd(&priv->cx);
     priv->cfg.enable = 0;
 }


 if ((NG_NODE_NUMHOOKS(node) == 0) && NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);
 return (0);
}
