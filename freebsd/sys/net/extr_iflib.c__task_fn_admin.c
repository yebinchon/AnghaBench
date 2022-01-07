
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* iflib_txq_t ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef TYPE_4__* if_ctx_t ;
struct TYPE_26__ {int c_cpu; } ;
struct TYPE_24__ {int isc_ntxqsets; } ;
struct TYPE_25__ {int ifc_flags; TYPE_2__* ifc_txqs; int ifc_ifp; int ifc_watchdog_events; TYPE_1__* ifc_sctx; TYPE_3__ ifc_softc_ctx; } ;
struct TYPE_23__ {TYPE_9__ ift_timer; } ;
struct TYPE_22__ {int isc_flags; } ;


 int CALLOUT_LOCK (TYPE_2__*) ;
 int CALLOUT_UNLOCK (TYPE_2__*) ;
 int CTX_LOCK (TYPE_4__*) ;
 int CTX_UNLOCK (TYPE_4__*) ;
 int IFCAP_NETMAP ;
 int IFC_DO_RESET ;
 int IFC_DO_WATCHDOG ;
 int IFC_IN_DETACH ;
 int IFDI_LINK_INTR_ENABLE (TYPE_4__*) ;
 int IFDI_UPDATE_ADMIN_STATUS (TYPE_4__*) ;
 int IFDI_WATCHDOG_RESET (TYPE_4__*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFLIB_ADMIN_ALWAYS_RUN ;
 int IFLIB_RESTART_BUDGET ;
 scalar_t__ LINK_ACTIVE (TYPE_4__*) ;
 int STATE_LOCK (TYPE_4__*) ;
 int STATE_UNLOCK (TYPE_4__*) ;
 int callout_reset_on (TYPE_9__*,int,int ,TYPE_2__*,int ) ;
 int callout_stop (TYPE_9__*) ;
 int hz ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int iflib_if_init_locked (TYPE_4__*) ;
 int iflib_netmap_timer_adjust (TYPE_4__*,TYPE_2__*,int*) ;
 int iflib_timer ;
 int iflib_txq_check_drain (TYPE_2__*,int ) ;

__attribute__((used)) static void
_task_fn_admin(void *context)
{
 if_ctx_t ctx = context;
 if_softc_ctx_t sctx = &ctx->ifc_softc_ctx;
 iflib_txq_t txq;
 int i;
 bool oactive, running, do_reset, do_watchdog, in_detach;
 uint32_t reset_on = hz / 2;

 STATE_LOCK(ctx);
 running = (if_getdrvflags(ctx->ifc_ifp) & IFF_DRV_RUNNING);
 oactive = (if_getdrvflags(ctx->ifc_ifp) & IFF_DRV_OACTIVE);
 do_reset = (ctx->ifc_flags & IFC_DO_RESET);
 do_watchdog = (ctx->ifc_flags & IFC_DO_WATCHDOG);
 in_detach = (ctx->ifc_flags & IFC_IN_DETACH);
 ctx->ifc_flags &= ~(IFC_DO_RESET|IFC_DO_WATCHDOG);
 STATE_UNLOCK(ctx);

 if ((!running && !oactive) && !(ctx->ifc_sctx->isc_flags & IFLIB_ADMIN_ALWAYS_RUN))
  return;
 if (in_detach)
  return;

 CTX_LOCK(ctx);
 for (txq = ctx->ifc_txqs, i = 0; i < sctx->isc_ntxqsets; i++, txq++) {
  CALLOUT_LOCK(txq);
  callout_stop(&txq->ift_timer);
  CALLOUT_UNLOCK(txq);
 }
 if (do_watchdog) {
  ctx->ifc_watchdog_events++;
  IFDI_WATCHDOG_RESET(ctx);
 }
 IFDI_UPDATE_ADMIN_STATUS(ctx);
 for (txq = ctx->ifc_txqs, i = 0; i < sctx->isc_ntxqsets; i++, txq++) {





  callout_reset_on(&txq->ift_timer, reset_on, iflib_timer, txq, txq->ift_timer.c_cpu);
 }
 IFDI_LINK_INTR_ENABLE(ctx);
 if (do_reset)
  iflib_if_init_locked(ctx);
 CTX_UNLOCK(ctx);

 if (LINK_ACTIVE(ctx) == 0)
  return;
 for (txq = ctx->ifc_txqs, i = 0; i < sctx->isc_ntxqsets; i++, txq++)
  iflib_txq_check_drain(txq, IFLIB_RESTART_BUDGET);
}
