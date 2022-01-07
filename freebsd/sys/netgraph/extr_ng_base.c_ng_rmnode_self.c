
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* node_p ;
struct TYPE_5__ {int nd_flags; } ;


 int NGF_CLOSING ;
 int NGF_INVALID ;
 TYPE_1__ ng_deadnode ;
 int ng_rmnode ;
 int ng_send_fn (TYPE_1__*,int *,int *,int *,int ) ;

int
ng_rmnode_self(node_p node)
{
 int error;

 if (node == &ng_deadnode)
  return (0);
 node->nd_flags |= NGF_INVALID;
 if (node->nd_flags & NGF_CLOSING)
  return (0);

 error = ng_send_fn(node, ((void*)0), &ng_rmnode, ((void*)0), 0);
 return (error);
}
