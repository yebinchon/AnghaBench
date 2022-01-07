
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* node_p ;
struct TYPE_9__ {int q_mtx; } ;
struct TYPE_11__ {TYPE_1__ nd_input_queue; TYPE_2__* nd_type; int nd_refs; int nd_vnet; } ;
struct TYPE_10__ {int refs; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IDHASH_WLOCK () ;
 int IDHASH_WUNLOCK () ;
 int LIST_REMOVE (TYPE_3__*,int ) ;
 int NAMEHASH_WLOCK () ;
 int NAMEHASH_WUNLOCK () ;
 int NG_FREE_NODE (TYPE_3__*) ;
 scalar_t__ NG_NODE_HAS_NAME (TYPE_3__*) ;
 int V_ng_named_nodes ;
 int V_ng_nodes ;
 int mtx_destroy (int *) ;
 int nd_idnodes ;
 int nd_nodes ;
 TYPE_3__ ng_deadnode ;
 scalar_t__ refcount_release (int *) ;

void
ng_unref_node(node_p node)
{

 if (node == &ng_deadnode)
  return;

 CURVNET_SET(node->nd_vnet);

 if (refcount_release(&node->nd_refs)) {

  node->nd_type->refs--;
  NAMEHASH_WLOCK();
  if (NG_NODE_HAS_NAME(node)) {
   V_ng_named_nodes--;
   LIST_REMOVE(node, nd_nodes);
  }
  NAMEHASH_WUNLOCK();

  IDHASH_WLOCK();
  V_ng_nodes--;
  LIST_REMOVE(node, nd_idnodes);
  IDHASH_WUNLOCK();

  mtx_destroy(&node->nd_input_queue.q_mtx);
  NG_FREE_NODE(node);
 }
 CURVNET_RESTORE();
}
