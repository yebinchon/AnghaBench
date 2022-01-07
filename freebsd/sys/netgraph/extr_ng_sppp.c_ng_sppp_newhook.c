
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef scalar_t__ hook_p ;
struct TYPE_4__ {scalar_t__ hook; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_HOOK_SET_PRIVATE (scalar_t__,TYPE_1__*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_SPPP_HOOK_DOWNSTREAM ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_sppp_newhook (node_p node, hook_p hook, const char *name)
{
 priv_p priv = NG_NODE_PRIVATE (node);

 if (strcmp (name, NG_SPPP_HOOK_DOWNSTREAM) != 0)
  return (EINVAL);

 if (priv->hook)
  return (EISCONN);

 priv->hook = hook;
 NG_HOOK_SET_PRIVATE (hook, priv);

 return (0);
}
