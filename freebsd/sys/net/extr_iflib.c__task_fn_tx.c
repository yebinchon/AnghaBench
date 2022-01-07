
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* iflib_txq_t ;
typedef TYPE_3__* if_t ;
typedef TYPE_4__* if_ctx_t ;
struct TYPE_14__ {int ifc_sysctl_tx_abdicate; int ifc_flags; int ifc_softc; scalar_t__ (* isc_txd_credits_update ) (int ,int ,int) ;TYPE_3__* ifc_ifp; } ;
struct TYPE_13__ {int if_snd; } ;
struct TYPE_12__ {int ift_id; int ift_br; scalar_t__ ift_db_pending; TYPE_1__* ift_ifdi; int * ift_cpu_exec_count; TYPE_4__* ift_ctx; } ;
struct TYPE_11__ {int idi_map; int idi_tag; } ;


 scalar_t__ ALTQ_IS_ENABLED (int *) ;
 int BUS_DMASYNC_POSTREAD ;
 int IFCAP_NETMAP ;
 int IFC_LEGACY ;
 int IFDI_INTR_ENABLE (TYPE_4__*) ;
 int IFDI_TX_QUEUE_INTR_ENABLE (TYPE_4__*,int ) ;
 int IFF_DRV_RUNNING ;
 int TX_BATCH_SIZE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 size_t curcpu ;
 int if_getcapenable (TYPE_3__*) ;
 int if_getdrvflags (TYPE_3__*) ;
 int iflib_altq_if_start (TYPE_3__*) ;
 int ifmp_ring_check_drainage (int ,int ) ;
 int ifmp_ring_enqueue (int ,void**,int,int ,int) ;
 int netmap_tx_irq (TYPE_3__*,int ) ;
 scalar_t__ stub1 (int ,int ,int) ;

__attribute__((used)) static void
_task_fn_tx(void *context)
{
 iflib_txq_t txq = context;
 if_ctx_t ctx = txq->ift_ctx;



 int abdicate = ctx->ifc_sysctl_tx_abdicate;




 if (!(if_getdrvflags(ctx->ifc_ifp) & IFF_DRV_RUNNING))
  return;
 if (txq->ift_db_pending)
  ifmp_ring_enqueue(txq->ift_br, (void **)&txq, 1, TX_BATCH_SIZE, abdicate);
 else if (!abdicate)
  ifmp_ring_check_drainage(txq->ift_br, TX_BATCH_SIZE);



 if (abdicate)
  ifmp_ring_check_drainage(txq->ift_br, TX_BATCH_SIZE);
 if (ctx->ifc_flags & IFC_LEGACY)
  IFDI_INTR_ENABLE(ctx);
 else
  IFDI_TX_QUEUE_INTR_ENABLE(ctx, txq->ift_id);
}
