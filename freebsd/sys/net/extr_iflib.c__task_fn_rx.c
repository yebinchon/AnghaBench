
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef TYPE_1__* iflib_rxq_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_7__ {int ifc_sysctl_rx_budget; int ifc_flags; int ifc_ifp; } ;
struct TYPE_6__ {int ifr_task; int ifr_id; int * ifr_cpu_exec_count; TYPE_2__* ifr_ctx; } ;


 int DBG_COUNTER_INC (int ) ;
 int GROUPTASK_ENQUEUE (int *) ;
 int IFCAP_NETMAP ;
 int IFC_LEGACY ;
 int IFDI_INTR_ENABLE (TYPE_2__*) ;
 int IFDI_RX_QUEUE_INTR_ENABLE (TYPE_2__*,int ) ;
 int IFF_DRV_RUNNING ;
 scalar_t__ __predict_false (int) ;
 size_t curcpu ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int iflib_rxeof (TYPE_1__*,int) ;
 scalar_t__ netmap_rx_irq (int ,int ,int *) ;
 int rx_intr_enables ;
 int task_fn_rxs ;

__attribute__((used)) static void
_task_fn_rx(void *context)
{
 iflib_rxq_t rxq = context;
 if_ctx_t ctx = rxq->ifr_ctx;
 bool more;
 uint16_t budget;




 DBG_COUNTER_INC(task_fn_rxs);
 if (__predict_false(!(if_getdrvflags(ctx->ifc_ifp) & IFF_DRV_RUNNING)))
  return;
 more = 1;
 budget = ctx->ifc_sysctl_rx_budget;
 if (budget == 0)
  budget = 16;
 if (more == 0 || (more = iflib_rxeof(rxq, budget)) == 0) {
  if (ctx->ifc_flags & IFC_LEGACY)
   IFDI_INTR_ENABLE(ctx);
  else
   IFDI_RX_QUEUE_INTR_ENABLE(ctx, rxq->ifr_id);
  DBG_COUNTER_INC(rx_intr_enables);
 }
 if (__predict_false(!(if_getdrvflags(ctx->ifc_ifp) & IFF_DRV_RUNNING)))
  return;
 if (more)
  GROUPTASK_ENQUEUE(&rxq->ifr_task);
}
