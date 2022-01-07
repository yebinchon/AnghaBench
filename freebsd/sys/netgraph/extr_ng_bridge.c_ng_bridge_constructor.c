
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int debugLevel; int minStableAge; int maxStaleness; int loopTimeout; } ;
struct TYPE_5__ {int numBuckets; int hashMask; int timer; int node; TYPE_1__ conf; void* tab; } ;


 int DEFAULT_LOOP_TIMEOUT ;
 int DEFAULT_MAX_STALENESS ;
 int DEFAULT_MIN_STABLE_AGE ;
 int MIN_BUCKETS ;
 int M_NETGRAPH_BRIDGE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int hz ;
 void* malloc (int,int ,int) ;
 int ng_bridge_timeout ;
 int ng_callout (int *,int ,int *,int ,int ,int *,int ) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ng_bridge_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH_BRIDGE, M_WAITOK | M_ZERO);
 ng_callout_init(&priv->timer);


 priv->tab = malloc(MIN_BUCKETS * sizeof(*priv->tab),
     M_NETGRAPH_BRIDGE, M_WAITOK | M_ZERO);
 priv->numBuckets = MIN_BUCKETS;
 priv->hashMask = MIN_BUCKETS - 1;
 priv->conf.debugLevel = 1;
 priv->conf.loopTimeout = DEFAULT_LOOP_TIMEOUT;
 priv->conf.maxStaleness = DEFAULT_MAX_STALENESS;
 priv->conf.minStableAge = DEFAULT_MIN_STABLE_AGE;
 NG_NODE_FORCE_WRITER(node);
 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;


 ng_callout(&priv->timer, node, ((void*)0), hz, ng_bridge_timeout, ((void*)0), 0);


 return (0);
}
