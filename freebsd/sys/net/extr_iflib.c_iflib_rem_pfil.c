
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pfil_head {int dummy; } ;
typedef TYPE_1__* iflib_rxq_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_6__ {TYPE_1__* ifc_rxqs; } ;
struct TYPE_5__ {struct pfil_head* pfil; } ;


 int NRXQSETS (TYPE_2__*) ;
 int pfil_head_unregister (struct pfil_head*) ;

__attribute__((used)) static void
iflib_rem_pfil(if_ctx_t ctx)
{
 struct pfil_head *pfil;
 iflib_rxq_t rxq;
 int i;

 rxq = ctx->ifc_rxqs;
 pfil = rxq->pfil;
 for (i = 0; i < NRXQSETS(ctx); i++, rxq++) {
  rxq->pfil = ((void*)0);
 }
 pfil_head_unregister(pfil);
}
