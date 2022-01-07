
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_6__ {int reorderTimer; scalar_t__ roq_len; int roq; int node; int rackTimer; int sackTimer; int mtx; } ;
struct TYPE_5__ {TYPE_4__ uppersess; int * sesshash; } ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_4__*,int ) ;
 int MTX_DEF ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int SESSHASHSIZE ;
 int SLIST_INIT (int *) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_callout_init (int *) ;
 int sessions ;

__attribute__((used)) static int
ng_pptpgre_constructor(node_p node)
{
 priv_p priv;
 int i;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, priv);


 mtx_init(&priv->uppersess.mtx, "ng_pptp", ((void*)0), MTX_DEF);
 ng_callout_init(&priv->uppersess.sackTimer);
 ng_callout_init(&priv->uppersess.rackTimer);
 priv->uppersess.node = node;

 SLIST_INIT(&priv->uppersess.roq);
 priv->uppersess.roq_len = 0;
 ng_callout_init(&priv->uppersess.reorderTimer);

 for (i = 0; i < SESSHASHSIZE; i++)
     LIST_INIT(&priv->sesshash[i]);

 LIST_INSERT_HEAD(&priv->sesshash[0], &priv->uppersess, sessions);


 return (0);
}
