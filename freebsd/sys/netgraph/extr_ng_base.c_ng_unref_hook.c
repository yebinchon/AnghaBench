
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* hook_p ;
struct TYPE_6__ {int hk_refs; } ;


 int NG_FREE_HOOK (TYPE_1__*) ;
 scalar_t__ _NG_HOOK_NODE (TYPE_1__*) ;
 int _NG_NODE_UNREF (scalar_t__) ;
 TYPE_1__ ng_deadhook ;
 scalar_t__ refcount_release (int *) ;

void
ng_unref_hook(hook_p hook)
{

 if (hook == &ng_deadhook)
  return;

 if (refcount_release(&hook->hk_refs)) {
  if (_NG_HOOK_NODE(hook))
   _NG_NODE_UNREF((_NG_HOOK_NODE(hook)));
  NG_FREE_HOOK(hook);
 }
}
