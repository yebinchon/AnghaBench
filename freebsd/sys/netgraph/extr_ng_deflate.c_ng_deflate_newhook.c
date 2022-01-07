
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_3__ {int compress; } ;


 int EINVAL ;
 int NG_DEFLATE_HOOK_COMP ;
 int NG_DEFLATE_HOOK_DECOMP ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_deflate_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (NG_NODE_NUMHOOKS(node) > 0)
  return (EINVAL);

 if (strcmp(name, NG_DEFLATE_HOOK_COMP) == 0)
  priv->compress = 1;
 else if (strcmp(name, NG_DEFLATE_HOOK_DECOMP) == 0)
  priv->compress = 0;
 else
  return (EINVAL);

 return (0);
}
