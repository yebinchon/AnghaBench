
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_5__ {TYPE_1__* ifp; int * upper; int * orphan; int * lower; } ;
struct TYPE_4__ {scalar_t__ if_hwassist; } ;


 int EINVAL ;
 int EISCONN ;
 char* NG_ETHER_HOOK_DIVERT ;
 char* NG_ETHER_HOOK_LOWER ;
 char* NG_ETHER_HOOK_ORPHAN ;
 char* NG_ETHER_HOOK_UPPER ;
 int NG_HOOK_HI_STACK (int *) ;
 int NG_HOOK_SET_RCVDATA (int *,int ) ;
 int NG_HOOK_SET_TO_INBOUND (int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int ng_ether_rcv_lower ;
 int ng_ether_rcv_upper ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ng_ether_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *hookptr;


 if (strcmp(name, NG_ETHER_HOOK_DIVERT) == 0)
  name = NG_ETHER_HOOK_LOWER;


 if (strcmp(name, NG_ETHER_HOOK_UPPER) == 0) {
  hookptr = &priv->upper;
  NG_HOOK_SET_RCVDATA(hook, ng_ether_rcv_upper);
  NG_HOOK_SET_TO_INBOUND(hook);
 } else if (strcmp(name, NG_ETHER_HOOK_LOWER) == 0) {
  hookptr = &priv->lower;
  NG_HOOK_SET_RCVDATA(hook, ng_ether_rcv_lower);
 } else if (strcmp(name, NG_ETHER_HOOK_ORPHAN) == 0) {
  hookptr = &priv->orphan;
  NG_HOOK_SET_RCVDATA(hook, ng_ether_rcv_lower);
 } else
  return (EINVAL);


 if (*hookptr != ((void*)0))
  return (EISCONN);


 if (hookptr == &priv->upper)
  priv->ifp->if_hwassist = 0;
 NG_HOOK_HI_STACK(hook);

 *hookptr = hook;
 return (0);
}
