
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__* node_p ;
typedef int item_p ;
typedef TYPE_3__* hook_p ;
struct TYPE_20__ {int hk_flags; TYPE_2__* hk_node; struct TYPE_20__* hk_peer; int hk_name; } ;
struct TYPE_19__ {TYPE_1__* nd_type; int nd_numhooks; int nd_hooks; } ;
struct TYPE_18__ {int (* newhook ) (TYPE_2__*,TYPE_3__*,int ) ;int (* connect ) (TYPE_3__*) ;} ;


 int EEXIST ;
 int ENOENT ;
 int ERROUT (int) ;
 int HK_INVALID ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NAME (TYPE_3__*) ;
 int NG_HOOK_REF (TYPE_3__*) ;
 int NG_NODE_REF (TYPE_2__*) ;
 int NG_REUSE_ITEM ;
 int TOPOLOGY_RLOCK () ;
 int TOPOLOGY_RUNLOCK () ;
 int TRAP_ERROR () ;
 int hk_hooks ;
 int ng_con_part3 ;
 TYPE_3__ ng_deadhook ;
 int ng_destroy_hook (TYPE_3__*) ;
 int * ng_findhook (TYPE_2__*,int ) ;
 int ng_send_fn2 (TYPE_2__*,TYPE_3__*,int ,int *,int *,int ,int ) ;
 int printf (char*) ;
 int stub1 (TYPE_2__*,TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int
ng_con_part2(node_p node, item_p item, hook_p hook)
{
 hook_p peer;
 int error = 0;
 if (ng_findhook(node, NG_HOOK_NAME(hook)) != ((void*)0)) {
  TRAP_ERROR();
  ng_destroy_hook(hook);
  printf("failed in ng_con_part2()\n");
  ERROUT(EEXIST);
 }






 if (node->nd_type->newhook != ((void*)0)) {
  if ((error = (*node->nd_type->newhook)(node, hook,
      hook->hk_name))) {
   ng_destroy_hook(hook);
   printf("failed in ng_con_part2()\n");
   ERROUT(error);
  }
 }





 hook->hk_node = node;
 NG_NODE_REF(node);
 LIST_INSERT_HEAD(&node->nd_hooks, hook, hk_hooks);
 node->nd_numhooks++;
 NG_HOOK_REF(hook);
 if (hook->hk_node->nd_type->connect) {
  if ((error = (*hook->hk_node->nd_type->connect) (hook))) {
   ng_destroy_hook(hook);
   printf("failed in ng_con_part2(A)\n");
   ERROUT(error);
  }
 }




 TOPOLOGY_RLOCK();
 peer = hook->hk_peer;
 if (peer == &ng_deadhook) {
  TOPOLOGY_RUNLOCK();
  printf("failed in ng_con_part2(B)\n");
  ng_destroy_hook(hook);
  ERROUT(ENOENT);
 }
 TOPOLOGY_RUNLOCK();

 if ((error = ng_send_fn2(peer->hk_node, peer, item, &ng_con_part3,
     ((void*)0), 0, NG_REUSE_ITEM))) {
  printf("failed in ng_con_part2(C)\n");
  ng_destroy_hook(hook);
  return (error);
 }
 hook->hk_flags &= ~HK_INVALID;
 return (0);
done:
 NG_FREE_ITEM(item);
 return (error);
}
