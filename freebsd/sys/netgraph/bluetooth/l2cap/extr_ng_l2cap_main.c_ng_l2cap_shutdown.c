
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_l2cap_p ;
struct TYPE_5__ {int * node; } ;


 int M_NETGRAPH_L2CAP ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int ng_l2cap_cleanup (TYPE_1__*) ;

__attribute__((used)) static int
ng_l2cap_shutdown(node_p node)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);


 l2cap->node = ((void*)0);
 ng_l2cap_cleanup(l2cap);

 bzero(l2cap, sizeof(*l2cap));
 free(l2cap, M_NETGRAPH_L2CAP);

 return (0);
}
