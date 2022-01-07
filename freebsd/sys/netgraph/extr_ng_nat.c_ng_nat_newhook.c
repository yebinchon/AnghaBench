
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {int flags; int * in; int * out; } ;


 int EINVAL ;
 int NGNAT_CONNECTED ;
 int NG_NAT_HOOK_IN ;
 int NG_NAT_HOOK_OUT ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_nat_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_NAT_HOOK_IN) == 0) {
  priv->in = hook;
 } else if (strcmp(name, NG_NAT_HOOK_OUT) == 0) {
  priv->out = hook;
 } else
  return (EINVAL);

 if (priv->out != ((void*)0) &&
     priv->in != ((void*)0))
  priv->flags |= NGNAT_CONNECTED;

 return(0);
}
