
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int fragTimer; } ;


 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ callout_pending (int *) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static void
ng_ppp_stop_frag_timer(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (callout_pending(&priv->fragTimer))
  ng_uncallout(&priv->fragTimer, node);
}
