
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * out; int * in; } ;


 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_checksum_disconnect(hook_p hook)
{
 priv_p priv;

 priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 if (hook == priv->in)
  priv->in = ((void*)0);

 if (hook == priv->out)
  priv->out = ((void*)0);

 if (NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0 &&
     NG_NODE_IS_VALID(NG_HOOK_NODE(hook)))
  ng_rmnode_self(NG_HOOK_NODE(hook));

 return (0);
}
