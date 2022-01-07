
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_6__ {int peer_win; int rexmit_max_to; int rexmit_max; } ;
struct TYPE_7__ {int * sesshash; TYPE_1__ conf; int node; } ;


 int L2TP_MAX_REXMIT ;
 int L2TP_MAX_REXMIT_TO ;
 int LIST_INIT (int *) ;
 int M_NETGRAPH_L2TP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int SESSHASHSIZE ;
 TYPE_2__* malloc (int,int ,int) ;
 int ng_l2tp_seq_init (TYPE_2__*) ;

__attribute__((used)) static int
ng_l2tp_constructor(node_p node)
{
 priv_p priv;
 int i;


 priv = malloc(sizeof(*priv), M_NETGRAPH_L2TP, M_WAITOK | M_ZERO);
 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;


 priv->conf.peer_win = 1;
 priv->conf.rexmit_max = L2TP_MAX_REXMIT;
 priv->conf.rexmit_max_to = L2TP_MAX_REXMIT_TO;


 ng_l2tp_seq_init(priv);

 for (i = 0; i < SESSHASHSIZE; i++)
     LIST_INIT(&priv->sesshash[i]);


 return (0);
}
