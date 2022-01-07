
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int node_p ;
typedef int item_p ;
typedef TYPE_3__* hook_p ;
struct TYPE_10__ {int hk_flags; TYPE_2__* hk_node; } ;
struct TYPE_9__ {TYPE_1__* nd_type; } ;
struct TYPE_8__ {int (* connect ) (TYPE_3__*) ;} ;


 int ENOENT ;
 int ERROUT (int) ;
 int HK_INVALID ;
 int NG_FREE_ITEM (int ) ;
 int * NG_HOOK_NODE (TYPE_3__*) ;
 int ng_deadnode ;
 int ng_destroy_hook (TYPE_3__*) ;
 int printf (char*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int
ng_con_part3(node_p node, item_p item, hook_p hook)
{
 int error = 0;
 if (NG_HOOK_NODE(hook) == &ng_deadnode) {
  ERROUT(ENOENT);
 }
 if (hook->hk_node->nd_type->connect) {
  if ((error = (*hook->hk_node->nd_type->connect) (hook))) {
   ng_destroy_hook(hook);
   printf("failed in ng_con_part3()\n");
   ERROUT(error);
  }
 }





 hook->hk_flags &= ~HK_INVALID;
done:
 NG_FREE_ITEM(item);
 return (error);
}
