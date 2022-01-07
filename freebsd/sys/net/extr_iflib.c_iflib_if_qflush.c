
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* iflib_txq_t ;
typedef int if_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_9__ {int ifc_flags; TYPE_1__* ifc_txqs; } ;
struct TYPE_8__ {int ift_br; } ;


 int IFC_QFLUSH ;
 int NTXQSETS (TYPE_2__*) ;
 int STATE_LOCK (TYPE_2__*) ;
 int STATE_UNLOCK (TYPE_2__*) ;
 TYPE_2__* if_getsoftc (int ) ;
 int if_qflush (int ) ;
 int iflib_txq_check_drain (TYPE_1__*,int ) ;
 scalar_t__ ifmp_ring_is_idle (int ) ;
 scalar_t__ ifmp_ring_is_stalled (int ) ;

__attribute__((used)) static void
iflib_if_qflush(if_t ifp)
{
 if_ctx_t ctx = if_getsoftc(ifp);
 iflib_txq_t txq = ctx->ifc_txqs;
 int i;

 STATE_LOCK(ctx);
 ctx->ifc_flags |= IFC_QFLUSH;
 STATE_UNLOCK(ctx);
 for (i = 0; i < NTXQSETS(ctx); i++, txq++)
  while (!(ifmp_ring_is_idle(txq->ift_br) || ifmp_ring_is_stalled(txq->ift_br)))
   iflib_txq_check_drain(txq, 0);
 STATE_LOCK(ctx);
 ctx->ifc_flags &= ~IFC_QFLUSH;
 STATE_UNLOCK(ctx);





 if_qflush(ifp);
}
