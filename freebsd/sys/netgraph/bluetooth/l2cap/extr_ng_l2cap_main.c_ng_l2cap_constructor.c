
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_l2cap_p ;
struct TYPE_4__ {int discon_timo; int chan_list; int con_list; int debug; int node; } ;


 int LIST_INIT (int *) ;
 int M_NETGRAPH_L2CAP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_L2CAP_WARN_LEVEL ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_l2cap_constructor(node_p node)
{
 ng_l2cap_p l2cap = ((void*)0);


 l2cap = malloc(sizeof(*l2cap), M_NETGRAPH_L2CAP, M_WAITOK | M_ZERO);

 l2cap->node = node;
 l2cap->debug = NG_L2CAP_WARN_LEVEL;
 l2cap->discon_timo = 5;

 LIST_INIT(&l2cap->con_list);
 LIST_INIT(&l2cap->chan_list);

 NG_NODE_SET_PRIVATE(node, l2cap);
 NG_NODE_FORCE_WRITER(node);

 return (0);
}
