
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int fib_export_p ;
struct TYPE_8__ {int maxfibs; int exp_callout; TYPE_2__* ifaces; int nfinfo_act_t; int nfinfo_inact_t; int node; void* fib_data; } ;
struct TYPE_6__ {int conf; } ;
struct TYPE_7__ {TYPE_1__ info; } ;


 int ACTIVE_TIMEOUT ;
 int INACTIVE_TIMEOUT ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NETFLOW_CONF_INGRESS ;
 int NG_NETFLOW_MAXIFACES ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_3__*) ;
 int callout_init (int *,int) ;
 void* malloc (int,int ,int) ;
 int ng_netflow_cache_init (TYPE_3__*) ;
 int rt_numfibs ;

__attribute__((used)) static int
ng_netflow_constructor(node_p node)
{
 priv_p priv;
 int i;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);


 priv->maxfibs = rt_numfibs;
 priv->fib_data = malloc(sizeof(fib_export_p) * priv->maxfibs,
     M_NETGRAPH, M_WAITOK | M_ZERO);


 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;


 priv->nfinfo_inact_t = INACTIVE_TIMEOUT;
 priv->nfinfo_act_t = ACTIVE_TIMEOUT;


 for (i = 0; i < NG_NETFLOW_MAXIFACES; i++)
  priv->ifaces[i].info.conf = NG_NETFLOW_CONF_INGRESS;


 callout_init(&priv->exp_callout, 1);


 ng_netflow_cache_init(priv);

 return (0);
}
