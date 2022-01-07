
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int priv_p ;
typedef TYPE_1__* node_p ;
struct TYPE_7__ {int nd_flags; } ;


 int M_NETGRAPH ;
 int NGF_REALLY_DIE ;
 int NG_NODE_PRIVATE (TYPE_1__*) ;
 int NG_NODE_REVIVE (TYPE_1__*) ;
 int NG_NODE_SET_PRIVATE (TYPE_1__*,int *) ;
 int NG_NODE_UNREF (TYPE_1__*) ;
 int free (int const,int ) ;

__attribute__((used)) static int
ng_gif_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (node->nd_flags & NGF_REALLY_DIE) {






  NG_NODE_SET_PRIVATE(node, ((void*)0));
  free(priv, M_NETGRAPH);
  NG_NODE_UNREF(node);
  return (0);
 }
 NG_NODE_REVIVE(node);
 return (0);
}
