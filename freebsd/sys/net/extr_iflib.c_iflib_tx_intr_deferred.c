
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* if_ctx_t ;
struct TYPE_5__ {TYPE_1__* ifc_txqs; } ;
struct TYPE_4__ {int ift_task; } ;


 int GROUPTASK_ENQUEUE (int *) ;

void
iflib_tx_intr_deferred(if_ctx_t ctx, int txqid)
{

 GROUPTASK_ENQUEUE(&ctx->ifc_txqs[txqid].ift_task);
}
