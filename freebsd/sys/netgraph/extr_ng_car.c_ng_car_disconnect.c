
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hookinfo {size_t q_first; size_t q_last; int * hook; int * q; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_6__ {int * dest; int * hook; } ;
struct TYPE_5__ {int * dest; } ;
struct TYPE_7__ {TYPE_2__ upper; TYPE_1__ lower; } ;


 size_t NG_CAR_QUEUE_SIZE ;
 int NG_FREE_M (int ) ;
 int NG_HOOK_NODE (int ) ;
 struct hookinfo* NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_3__* NG_NODE_PRIVATE (int const) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_car_disconnect(hook_p hook)
{
 struct hookinfo *const hinfo = NG_HOOK_PRIVATE(hook);
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (hinfo) {

  while (hinfo->q_first != hinfo->q_last) {
   NG_FREE_M(hinfo->q[hinfo->q_first]);
   hinfo->q_first++;
   if (hinfo->q_first >= NG_CAR_QUEUE_SIZE)
        hinfo->q_first = 0;
  }

  if (hinfo->hook == priv->upper.hook)
   priv->lower.dest = ((void*)0);
  else
   priv->upper.dest = ((void*)0);
  hinfo->hook = ((void*)0);
 }

 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
     && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
