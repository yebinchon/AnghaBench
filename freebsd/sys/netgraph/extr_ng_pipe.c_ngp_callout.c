
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_5__ {int * hook; } ;
struct TYPE_4__ {TYPE_2__ lower; TYPE_2__ upper; scalar_t__ timer_scheduled; } ;


 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int microuptime (struct timeval*) ;
 int pipe_dequeue (TYPE_2__*,struct timeval*) ;

__attribute__((used)) static void
ngp_callout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct timeval now;

 priv->timer_scheduled = 0;
 microuptime(&now);
 if (priv->upper.hook != ((void*)0))
  pipe_dequeue(&priv->upper, &now);
 if (priv->lower.hook != ((void*)0))
  pipe_dequeue(&priv->lower, &now);
}
