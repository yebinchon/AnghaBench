
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int * NG_HOOK_PRIVATE (int ) ;
 int NG_HOOK_UNREF (int ) ;
 int ng_btsocket_sco_wakeup_route_task () ;

__attribute__((used)) static int
ng_btsocket_sco_node_disconnect(hook_p hook)
{
 if (NG_HOOK_PRIVATE(hook) != ((void*)0))
  return (ng_btsocket_sco_wakeup_route_task());

 NG_HOOK_UNREF(hook);

 return (0);
}
