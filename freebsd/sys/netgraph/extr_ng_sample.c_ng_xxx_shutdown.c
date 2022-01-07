
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xxx_p ;
typedef TYPE_2__* node_p ;
struct TYPE_11__ {int nd_flags; } ;
struct TYPE_10__ {TYPE_2__* node; } ;


 int M_NETGRAPH ;
 int NGF_REALLY_DIE ;
 TYPE_1__* NG_NODE_PRIVATE (TYPE_2__*) ;
 int NG_NODE_REVIVE (TYPE_2__*) ;
 int NG_NODE_SET_PRIVATE (TYPE_2__*,int *) ;
 int NG_NODE_UNREF (TYPE_2__*) ;
 int free (TYPE_1__* const,int ) ;

__attribute__((used)) static int
ng_xxx_shutdown(node_p node)
{
 const xxx_p privdata = NG_NODE_PRIVATE(node);


 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 free(privdata, M_NETGRAPH);
 return (0);
}
