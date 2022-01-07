
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int hook_p ;
struct TYPE_3__ {int * hook; } ;


 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
ng_sppp_disconnect (hook_p hook)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 if (priv)
  priv->hook = ((void*)0);

 return (0);
}
