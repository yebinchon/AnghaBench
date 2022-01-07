
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hpriv_p ;
struct TYPE_4__ {int hook; int node; int reorderTimer; } ;


 int hz ;
 int ng_callout (int *,int ,int ,int,int ,TYPE_1__*,int ) ;
 int ng_pptpgre_reorder_timeout ;
 int reorder_timeout ;

__attribute__((used)) static void
ng_pptpgre_start_reorder_timer(hpriv_p hpriv)
{
 int ticks;


 ticks = (((reorder_timeout * hz) + 1000 - 1) / 1000) + 1;
 ng_callout(&hpriv->reorderTimer, hpriv->node, hpriv->hook,
  ticks, ng_pptpgre_reorder_timeout, hpriv, 0);
}
