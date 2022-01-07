
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_5__ {void* hook; } ;
struct TYPE_4__ {TYPE_3__ ipx; TYPE_3__ atalk; TYPE_3__ inet6; TYPE_3__ inet; int handle; TYPE_3__ downstream; } ;


 int EINVAL ;
 int KEEPALIVE_SECS ;
 int NG_CISCO_HOOK_APPLETALK ;
 int NG_CISCO_HOOK_DEBUG ;
 int NG_CISCO_HOOK_DOWNSTREAM ;
 int NG_CISCO_HOOK_INET ;
 int NG_CISCO_HOOK_INET6 ;
 int NG_CISCO_HOOK_IPX ;
 int NG_HOOK_SET_PRIVATE (void*,TYPE_3__*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int cisco_keepalive ;
 int hz ;
 int ng_callout (int *,int ,int *,int,int *,void*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
cisco_newhook(node_p node, hook_p hook, const char *name)
{
 const sc_p sc = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_CISCO_HOOK_DOWNSTREAM) == 0) {
  sc->downstream.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &sc->downstream);


  ng_callout(&sc->handle, node, ((void*)0), (hz * KEEPALIVE_SECS),
      &cisco_keepalive, (void *)sc, 0);
 } else if (strcmp(name, NG_CISCO_HOOK_INET) == 0) {
  sc->inet.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &sc->inet);
 } else if (strcmp(name, NG_CISCO_HOOK_INET6) == 0) {
  sc->inet6.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &sc->inet6);
 } else if (strcmp(name, NG_CISCO_HOOK_APPLETALK) == 0) {
  sc->atalk.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &sc->atalk);
 } else if (strcmp(name, NG_CISCO_HOOK_IPX) == 0) {
  sc->ipx.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &sc->ipx);
 } else if (strcmp(name, NG_CISCO_HOOK_DEBUG) == 0) {
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 } else
  return (EINVAL);
 return 0;
}
