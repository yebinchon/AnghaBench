
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* priv_p ;
typedef scalar_t__ node_p ;
typedef TYPE_2__* link_p ;
typedef int linkName ;
typedef int hook_p ;
struct TYPE_7__ {int hook; } ;
struct TYPE_6__ {int numLinks; } ;


 int EINVAL ;
 int ELOOP ;
 int ENOMEM ;
 int M_NETGRAPH_BRIDGE ;
 int M_WAITOK ;
 int M_ZERO ;
 char* NG_BRIDGE_HOOK_LINK_PREFIX ;
 int NG_HOOKSIZ ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_2__*) ;
 TYPE_1__* NG_NODE_PRIVATE (scalar_t__) ;
 scalar_t__ NG_PEER_NODE (int ) ;
 TYPE_2__* malloc (int,int ,int) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 int strtoul (char const*,int *,int) ;

__attribute__((used)) static int
ng_bridge_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);


 if (strlen(name) > strlen(NG_BRIDGE_HOOK_LINK_PREFIX)) {
  char linkName[NG_HOOKSIZ];
  u_int32_t linkNum;
  link_p link;


  linkNum = strtoul(name + strlen(NG_BRIDGE_HOOK_LINK_PREFIX),
      ((void*)0), 10);

  snprintf(linkName, sizeof(linkName),
    "%s%u", NG_BRIDGE_HOOK_LINK_PREFIX,
    linkNum);
  if (strcmp(linkName, name) != 0)
   return (EINVAL);

  if(NG_PEER_NODE(hook) == node)
          return (ELOOP);

  link = malloc(sizeof(*link), M_NETGRAPH_BRIDGE,
         M_WAITOK|M_ZERO);
  if (link == ((void*)0))
   return (ENOMEM);
  link->hook = hook;
  NG_HOOK_SET_PRIVATE(hook, link);
  priv->numLinks++;
  return (0);
 }


 return (EINVAL);
}
