
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int exp_callout; } ;


 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int callout_drain (int *) ;
 int ng_netflow_cache_flush (TYPE_1__* const) ;

__attribute__((used)) static int
ng_netflow_close(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 callout_drain(&priv->exp_callout);
 ng_netflow_cache_flush(priv);

 return (0);
}
