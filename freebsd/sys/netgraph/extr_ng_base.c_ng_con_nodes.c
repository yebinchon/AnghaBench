
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int node_p ;
typedef int item_p ;
typedef TYPE_1__* hook_p ;
struct TYPE_9__ {int hk_refs; int * hk_node; struct TYPE_9__* hk_peer; int hk_flags; } ;


 int EEXIST ;
 int ENOMEM ;
 int HK_INVALID ;
 int NG_ALLOC_HOOK (TYPE_1__*) ;
 int NG_HOOKSIZ ;
 int NG_HOOK_NAME (TYPE_1__*) ;
 int NG_HOOK_REF (TYPE_1__*) ;
 int NG_HOOK_UNREF (TYPE_1__*) ;
 int NG_NOFLAGS ;
 int TRAP_ERROR () ;
 int ng_add_hook (int ,char const*,TYPE_1__**) ;
 int ng_con_part2 ;
 int ng_deadnode ;
 int ng_destroy_hook (TYPE_1__*) ;
 int * ng_findhook (int ,char const*) ;
 int ng_send_fn2 (int ,TYPE_1__*,int ,int *,int *,int ,int ) ;
 int printf (char*,int) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int
ng_con_nodes(item_p item, node_p node, const char *name,
    node_p node2, const char *name2)
{
 int error;
 hook_p hook;
 hook_p hook2;

 if (ng_findhook(node2, name2) != ((void*)0)) {
  return(EEXIST);
 }
 if ((error = ng_add_hook(node, name, &hook)))
  return (error);

 NG_ALLOC_HOOK(hook2);
 if (hook2 == ((void*)0)) {
  TRAP_ERROR();
  ng_destroy_hook(hook);
  NG_HOOK_UNREF(hook);
  return (ENOMEM);
 }
 hook2->hk_refs = 1;
 hook2->hk_flags = HK_INVALID;
 hook2->hk_peer = hook;
 hook->hk_peer = hook2;
 NG_HOOK_REF(hook);
 NG_HOOK_REF(hook2);
 hook2->hk_node = &ng_deadnode;
 strlcpy(NG_HOOK_NAME(hook2), name2, NG_HOOKSIZ);






 if ((error = ng_send_fn2(node2, hook2, item, &ng_con_part2, ((void*)0), 0,
     NG_NOFLAGS))) {
  printf("failed in ng_con_nodes(): %d\n", error);
  ng_destroy_hook(hook);
 }

 NG_HOOK_UNREF(hook);
 NG_HOOK_UNREF(hook2);
 return (error);
}
