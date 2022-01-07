
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int fragTimer; } ;


 int MP_FRAGTIMER_INTERVAL ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int callout_pending (int *) ;
 int ng_callout (int *,int ,int *,int ,int ,int *,int ) ;
 int ng_ppp_frag_timeout ;

__attribute__((used)) static void
ng_ppp_start_frag_timer(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (!(callout_pending(&priv->fragTimer)))
  ng_callout(&priv->fragTimer, node, ((void*)0), MP_FRAGTIMER_INTERVAL,
      ng_ppp_frag_timeout, ((void*)0), 0);
}
