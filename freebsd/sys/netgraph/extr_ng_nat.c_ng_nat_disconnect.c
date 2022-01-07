
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * in; int * out; int flags; } ;


 int NGNAT_CONNECTED ;
 int NG_HOOK_NODE (int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_nat_disconnect(hook_p hook)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 priv->flags &= ~NGNAT_CONNECTED;

 if (hook == priv->out)
  priv->out = ((void*)0);
 if (hook == priv->in)
  priv->in = ((void*)0);

 if (priv->out == ((void*)0) && priv->in == ((void*)0))
  ng_rmnode_self(NG_HOOK_NODE(hook));

 return (0);
}
