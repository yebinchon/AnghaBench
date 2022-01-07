
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ng_type {int refs; int name; } ;
typedef TYPE_1__* node_p ;
struct TYPE_9__ {scalar_t__ q_flags; int queue; } ;
struct TYPE_8__ {scalar_t__ nd_ID; int nd_hooks; TYPE_3__ nd_input_queue; int nd_vnet; struct ng_type* nd_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int IDHASH_WLOCK () ;
 int IDHASH_WUNLOCK () ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int NG_ALLOC_NODE (TYPE_1__*) ;
 int NG_IDHASH_FIND (scalar_t__,TYPE_1__*) ;
 size_t NG_IDHASH_FN (scalar_t__) ;
 int NG_NODE_REF (TYPE_1__*) ;
 int NG_QUEUE_LOCK_INIT (TYPE_3__*) ;
 int STAILQ_INIT (int *) ;
 int TRAP_ERROR () ;
 int V_nextID ;
 int * V_ng_ID_hash ;
 int V_ng_ID_hmask ;
 int V_ng_nodes ;
 int curvnet ;
 int nd_idnodes ;
 int ng_ID_rehash () ;
 int * ng_findtype (int ) ;

int
ng_make_node_common(struct ng_type *type, node_p *nodepp)
{
 node_p node;


 if (ng_findtype(type->name) == ((void*)0)) {
  TRAP_ERROR();
  return (EINVAL);
 }


 NG_ALLOC_NODE(node);
 if (node == ((void*)0)) {
  TRAP_ERROR();
  return (ENOMEM);
 }
 node->nd_type = type;



 NG_NODE_REF(node);
 type->refs++;

 NG_QUEUE_LOCK_INIT(&node->nd_input_queue);
 STAILQ_INIT(&node->nd_input_queue.queue);
 node->nd_input_queue.q_flags = 0;


 LIST_INIT(&node->nd_hooks);


 IDHASH_WLOCK();
 for (;;) {
  node_p node2 = ((void*)0);
  node->nd_ID = V_nextID++;


  NG_IDHASH_FIND(node->nd_ID, node2);
  if ((node->nd_ID != 0) && (node2 == ((void*)0))) {
   break;
  }
 }
 V_ng_nodes++;
 if (V_ng_nodes * 2 > V_ng_ID_hmask)
  ng_ID_rehash();
 LIST_INSERT_HEAD(&V_ng_ID_hash[NG_IDHASH_FN(node->nd_ID)], node,
     nd_idnodes);
 IDHASH_WUNLOCK();


 *nodepp = node;
 return (0);
}
