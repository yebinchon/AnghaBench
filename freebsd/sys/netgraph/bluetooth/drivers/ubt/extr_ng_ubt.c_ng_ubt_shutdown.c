
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* node_p ;
struct TYPE_6__ {int nd_flags; } ;


 int NGF_REALLY_DIE ;
 int NG_NODE_REVIVE (TYPE_1__*) ;
 int NG_NODE_SET_PRIVATE (TYPE_1__*,int *) ;
 int NG_NODE_UNREF (TYPE_1__*) ;

__attribute__((used)) static int
ng_ubt_shutdown(node_p node)
{
 if (node->nd_flags & NGF_REALLY_DIE) {




  NG_NODE_SET_PRIVATE(node, ((void*)0));
  NG_NODE_UNREF(node);
 } else
  NG_NODE_REVIVE(node);

 return (0);
}
