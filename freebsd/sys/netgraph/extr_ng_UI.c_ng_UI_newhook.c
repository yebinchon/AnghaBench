
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {void* uplink; void* downlink; } ;


 int EINVAL ;
 int EISCONN ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_UI_HOOK_DOWNSTREAM ;
 int NG_UI_HOOK_UPSTREAM ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_UI_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (!strcmp(name, NG_UI_HOOK_DOWNSTREAM)) {
  if (priv->downlink)
   return (EISCONN);
  priv->downlink = hook;
 } else if (!strcmp(name, NG_UI_HOOK_UPSTREAM)) {
  if (priv->uplink)
   return (EISCONN);
  priv->uplink = hook;
 } else
  return (EINVAL);
 return (0);
}
