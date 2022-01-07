
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_2__* node_p ;
typedef TYPE_3__* hook_p ;
struct TYPE_17__ {int hk_refs; TYPE_2__* hk_node; int * hk_peer; int hk_flags; } ;
struct TYPE_16__ {int nd_numhooks; int nd_hooks; TYPE_1__* nd_type; } ;
struct TYPE_15__ {int (* newhook ) (TYPE_2__*,TYPE_3__*,char const*) ;} ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int HK_INVALID ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int NG_ALLOC_HOOK (TYPE_3__*) ;
 int NG_HOOKSIZ ;
 int NG_HOOK_NAME (TYPE_3__*) ;
 int NG_HOOK_REF (TYPE_3__*) ;
 int NG_HOOK_UNREF (TYPE_3__*) ;
 int NG_NODE_REF (TYPE_2__*) ;
 int TRAP_ERROR () ;
 int hk_hooks ;
 int ng_deadhook ;
 int * ng_findhook (TYPE_2__*,char const*) ;
 int strlcpy (int ,char const*,int ) ;
 int stub1 (TYPE_2__*,TYPE_3__*,char const*) ;

__attribute__((used)) static int
ng_add_hook(node_p node, const char *name, hook_p *hookp)
{
 hook_p hook;
 int error = 0;


 if (name == ((void*)0)) {
  TRAP_ERROR();
  return (EINVAL);
 }
 if (ng_findhook(node, name) != ((void*)0)) {
  TRAP_ERROR();
  return (EEXIST);
 }


 NG_ALLOC_HOOK(hook);
 if (hook == ((void*)0)) {
  TRAP_ERROR();
  return (ENOMEM);
 }
 hook->hk_refs = 1;
 hook->hk_flags = HK_INVALID;
 hook->hk_peer = &ng_deadhook;
 hook->hk_node = node;
 NG_NODE_REF(node);


 strlcpy(NG_HOOK_NAME(hook), name, NG_HOOKSIZ);





 if (node->nd_type->newhook != ((void*)0)) {
  if ((error = (*node->nd_type->newhook)(node, hook, name))) {
   NG_HOOK_UNREF(hook);
   return (error);
  }
 }




 LIST_INSERT_HEAD(&node->nd_hooks, hook, hk_hooks);
 node->nd_numhooks++;
 NG_HOOK_REF(hook);

 if (hookp)
  *hookp = hook;
 return (0);
}
