
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* hook_p ;
struct TYPE_9__ {struct TYPE_9__* hk_peer; } ;
struct TYPE_8__ {scalar_t__ hk_node; TYPE_3__* hk_peer; } ;


 int EINVAL ;
 scalar_t__ NG_HOOK_NOT_VALID (TYPE_1__*) ;
 int NG_HOOK_UNREF (TYPE_1__*) ;
 int TOPOLOGY_WLOCK () ;
 int TOPOLOGY_WUNLOCK () ;
 int TRAP_ERROR () ;
 TYPE_3__ ng_deadhook ;
 int ng_destroy_hook (TYPE_1__*) ;

int
ng_bypass(hook_p hook1, hook_p hook2)
{
 if (hook1->hk_node != hook2->hk_node) {
  TRAP_ERROR();
  return (EINVAL);
 }
 TOPOLOGY_WLOCK();
 if (NG_HOOK_NOT_VALID(hook1) || NG_HOOK_NOT_VALID(hook2)) {
  TOPOLOGY_WUNLOCK();
  return (EINVAL);
 }
 hook1->hk_peer->hk_peer = hook2->hk_peer;
 hook2->hk_peer->hk_peer = hook1->hk_peer;

 hook1->hk_peer = &ng_deadhook;
 hook2->hk_peer = &ng_deadhook;
 TOPOLOGY_WUNLOCK();

 NG_HOOK_UNREF(hook1);
 NG_HOOK_UNREF(hook2);


 ng_destroy_hook(hook1);
 ng_destroy_hook(hook2);
 return (0);
}
