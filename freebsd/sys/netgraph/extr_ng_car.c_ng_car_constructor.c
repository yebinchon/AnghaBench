
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_5__* priv_p ;
typedef int node_p ;
struct TYPE_9__ {scalar_t__ mode; void* red_action; void* yellow_action; void* green_action; void* cir; void* ebs; void* cbs; } ;
struct TYPE_11__ {int q_mtx; int q_callout; scalar_t__ q_last; scalar_t__ q_first; int lastRefill; TYPE_2__ conf; void* te; void* tc; int * dest; int * hook; } ;
struct TYPE_8__ {scalar_t__ mode; void* red_action; void* yellow_action; void* green_action; void* cir; void* ebs; void* cbs; } ;
struct TYPE_10__ {int lastRefill; int q_mtx; int q_callout; scalar_t__ q_last; scalar_t__ q_first; TYPE_1__ conf; void* te; void* tc; int * dest; int * hook; } ;
struct TYPE_12__ {TYPE_4__ lower; TYPE_3__ upper; int node; } ;


 int MTX_DEF ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 void* NG_CAR_ACTION_DROP ;
 void* NG_CAR_ACTION_FORWARD ;
 void* NG_CAR_CBS_MIN ;
 void* NG_CAR_CIR_DFLT ;
 void* NG_CAR_EBS_MIN ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_5__*) ;
 int getbinuptime (int *) ;
 TYPE_5__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ng_car_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);

 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;





 priv->upper.hook = ((void*)0);
 priv->upper.dest = ((void*)0);
 priv->upper.tc = priv->upper.conf.cbs = NG_CAR_CBS_MIN;
 priv->upper.te = priv->upper.conf.ebs = NG_CAR_EBS_MIN;
 priv->upper.conf.cir = NG_CAR_CIR_DFLT;
 priv->upper.conf.green_action = NG_CAR_ACTION_FORWARD;
 priv->upper.conf.yellow_action = NG_CAR_ACTION_FORWARD;
 priv->upper.conf.red_action = NG_CAR_ACTION_DROP;
 priv->upper.conf.mode = 0;
 getbinuptime(&priv->upper.lastRefill);
 priv->upper.q_first = 0;
 priv->upper.q_last = 0;
 ng_callout_init(&priv->upper.q_callout);
 mtx_init(&priv->upper.q_mtx, "ng_car_u", ((void*)0), MTX_DEF);

 priv->lower.hook = ((void*)0);
 priv->lower.dest = ((void*)0);
 priv->lower.tc = priv->lower.conf.cbs = NG_CAR_CBS_MIN;
 priv->lower.te = priv->lower.conf.ebs = NG_CAR_EBS_MIN;
 priv->lower.conf.cir = NG_CAR_CIR_DFLT;
 priv->lower.conf.green_action = NG_CAR_ACTION_FORWARD;
 priv->lower.conf.yellow_action = NG_CAR_ACTION_FORWARD;
 priv->lower.conf.red_action = NG_CAR_ACTION_DROP;
 priv->lower.conf.mode = 0;
 priv->lower.lastRefill = priv->upper.lastRefill;
 priv->lower.q_first = 0;
 priv->lower.q_last = 0;
 ng_callout_init(&priv->lower.q_callout);
 mtx_init(&priv->lower.q_mtx, "ng_car_l", ((void*)0), MTX_DEF);

 return (0);
}
