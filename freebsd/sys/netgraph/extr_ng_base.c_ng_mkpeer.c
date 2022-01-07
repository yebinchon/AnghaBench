
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_3__* hook_p ;
struct TYPE_12__ {int hk_flags; TYPE_2__* hk_node; struct TYPE_12__* hk_peer; } ;
struct TYPE_11__ {TYPE_1__* nd_type; } ;
struct TYPE_10__ {int (* connect ) (TYPE_3__*) ;} ;


 int HK_INVALID ;
 int NG_HOOK_REF (TYPE_3__*) ;
 int NG_HOOK_UNREF (TYPE_3__*) ;
 int ng_add_hook (int ,char const*,TYPE_3__**) ;
 int ng_destroy_hook (TYPE_3__*) ;
 int ng_make_node (char*,int *) ;
 int ng_rmnode (int ,int *,int *,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int
ng_mkpeer(node_p node, const char *name, const char *name2, char *type)
{
 node_p node2;
 hook_p hook1, hook2;
 int error;

 if ((error = ng_make_node(type, &node2))) {
  return (error);
 }

 if ((error = ng_add_hook(node, name, &hook1))) {
  ng_rmnode(node2, ((void*)0), ((void*)0), 0);
  return (error);
 }

 if ((error = ng_add_hook(node2, name2, &hook2))) {
  ng_rmnode(node2, ((void*)0), ((void*)0), 0);
  ng_destroy_hook(hook1);
  NG_HOOK_UNREF(hook1);
  return (error);
 }




 hook1->hk_peer = hook2;
 hook2->hk_peer = hook1;


 NG_HOOK_REF(hook1);
 NG_HOOK_REF(hook2);


 if (hook1->hk_node->nd_type->connect) {
  error = (*hook1->hk_node->nd_type->connect) (hook1);
 }

 if ((error == 0) && hook2->hk_node->nd_type->connect) {
  error = (*hook2->hk_node->nd_type->connect) (hook2);

 }




 if (error) {
  ng_destroy_hook(hook2);
  ng_rmnode(node2, ((void*)0), ((void*)0), 0);
 } else {

  hook1->hk_flags &= ~HK_INVALID;
  hook2->hk_flags &= ~HK_INVALID;
 }
 NG_HOOK_UNREF(hook1);
 NG_HOOK_UNREF(hook2);
 return (error);
}
