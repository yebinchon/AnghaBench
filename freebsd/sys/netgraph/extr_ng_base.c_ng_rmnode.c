
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* node_p ;
typedef int * hook_p ;
struct TYPE_13__ {int nd_flags; TYPE_1__* nd_type; int nd_hooks; } ;
struct TYPE_12__ {int (* shutdown ) (TYPE_2__*) ;int (* close ) (TYPE_2__*) ;} ;


 int * LIST_FIRST (int *) ;
 int NGF_CLOSING ;
 int NGF_INVALID ;
 scalar_t__ NG_NODE_IS_VALID (TYPE_2__*) ;
 int NG_NODE_REF (TYPE_2__*) ;
 int NG_NODE_UNREF (TYPE_2__*) ;
 TYPE_2__ ng_deadnode ;
 int ng_destroy_hook (int *) ;
 int ng_flush_input_queue (TYPE_2__*) ;
 int ng_unname (TYPE_2__*) ;
 int printf (char*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

void
ng_rmnode(node_p node, hook_p dummy1, void *dummy2, int dummy3)
{
 hook_p hook;


 if ((node->nd_flags & NGF_CLOSING) != 0)
  return;

 if (node == &ng_deadnode) {
  printf ("shutdown called on deadnode\n");
  return;
 }


 NG_NODE_REF(node);







 node->nd_flags |= NGF_INVALID|NGF_CLOSING;


 if (node->nd_type && node->nd_type->close)
  (*node->nd_type->close)(node);


 while ((hook = LIST_FIRST(&node->nd_hooks)) != ((void*)0))
  ng_destroy_hook(hook);
 ng_flush_input_queue(node);


 if (node->nd_type && node->nd_type->shutdown) {
  (*node->nd_type->shutdown)(node);
  if (NG_NODE_IS_VALID(node)) {
   node->nd_flags &= ~(NGF_INVALID|NGF_CLOSING);
   NG_NODE_UNREF(node);
   return;
  }
 } else {
  NG_NODE_UNREF(node);
 }

 ng_unname(node);
 NG_NODE_UNREF(node);
}
