
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {void* ethernet; void* inet; void* ppp; void* downlink; } ;


 int EINVAL ;
 int EISCONN ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_RFC1490_HOOK_DOWNSTREAM ;
 int NG_RFC1490_HOOK_ETHERNET ;
 int NG_RFC1490_HOOK_INET ;
 int NG_RFC1490_HOOK_PPP ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_rfc1490_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (!strcmp(name, NG_RFC1490_HOOK_DOWNSTREAM)) {
  if (priv->downlink)
   return (EISCONN);
  priv->downlink = hook;
 } else if (!strcmp(name, NG_RFC1490_HOOK_PPP)) {
  if (priv->ppp)
   return (EISCONN);
  priv->ppp = hook;
 } else if (!strcmp(name, NG_RFC1490_HOOK_INET)) {
  if (priv->inet)
   return (EISCONN);
  priv->inet = hook;
 } else if (!strcmp(name, NG_RFC1490_HOOK_ETHERNET)) {
  if (priv->ethernet)
   return (EISCONN);
  priv->ethernet = hook;
 } else
  return (EINVAL);
 return (0);
}
