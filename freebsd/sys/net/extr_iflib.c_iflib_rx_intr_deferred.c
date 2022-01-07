
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* if_ctx_t ;
struct TYPE_5__ {TYPE_1__* ifc_rxqs; } ;
struct TYPE_4__ {int ifr_task; } ;


 int GROUPTASK_ENQUEUE (int *) ;

void
iflib_rx_intr_deferred(if_ctx_t ctx, int rxqid)
{

 GROUPTASK_ENQUEUE(&ctx->ifc_rxqs[rxqid].ifr_task);
}
