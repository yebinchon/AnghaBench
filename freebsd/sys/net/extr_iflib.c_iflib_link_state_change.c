
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* iflib_txq_t ;
typedef int if_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_7__ {int isc_ntxqsets; } ;
struct TYPE_9__ {int ifc_link_state; TYPE_1__ ifc_softc_ctx; int ifc_flags; TYPE_2__* ifc_txqs; int ifc_ifp; } ;
struct TYPE_8__ {int ift_qstatus; } ;


 int IFC_PREFETCH ;
 int IFLIB_QUEUE_IDLE ;
 int IF_Gbps (int) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int STATE_LOCK (TYPE_3__*) ;
 int STATE_UNLOCK (TYPE_3__*) ;
 int if_link_state_change (int ,int) ;
 int if_setbaudrate (int ,int ) ;

void
iflib_link_state_change(if_ctx_t ctx, int link_state, uint64_t baudrate)
{
 if_t ifp = ctx->ifc_ifp;
 iflib_txq_t txq = ctx->ifc_txqs;

 if_setbaudrate(ifp, baudrate);
 if (baudrate >= IF_Gbps(10)) {
  STATE_LOCK(ctx);
  ctx->ifc_flags |= IFC_PREFETCH;
  STATE_UNLOCK(ctx);
 }

 if ((ctx->ifc_link_state == LINK_STATE_UP) && (link_state == LINK_STATE_DOWN)) {
  for (int i = 0; i < ctx->ifc_softc_ctx.isc_ntxqsets; i++, txq++)
   txq->ift_qstatus = IFLIB_QUEUE_IDLE;
 }
 ctx->ifc_link_state = link_state;
 if_link_state_change(ifp, link_state);
}
