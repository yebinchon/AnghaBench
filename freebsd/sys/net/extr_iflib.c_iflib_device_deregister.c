
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct taskqgroup {int dummy; } ;
typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* iflib_fl_t ;
typedef int if_t ;
typedef TYPE_4__* if_ctx_t ;
typedef int device_t ;
struct TYPE_28__ {int * gt_uniq; } ;
struct TYPE_27__ {int ifc_flags; struct TYPE_27__* ifc_softc; int ifc_dev; TYPE_6__ ifc_vflr_task; TYPE_6__ ifc_admin_task; TYPE_2__* ifc_rxqs; TYPE_1__* ifc_txqs; int * ifc_led_dev; int ifc_ifp; } ;
struct TYPE_26__ {TYPE_4__* ifl_rx_bitmap; } ;
struct TYPE_25__ {int ifr_nfl; TYPE_3__* ifr_fl; TYPE_6__ ifr_task; } ;
struct TYPE_24__ {TYPE_6__ ift_task; int ift_timer; } ;


 int CTX_IS_VF (TYPE_4__*) ;
 int CTX_LOCK (TYPE_4__*) ;
 int CTX_UNLOCK (TYPE_4__*) ;
 int EBUSY ;
 int IFC_IN_DETACH ;
 int IFC_SC_ALLOCATED ;
 int IFDI_DETACH (TYPE_4__*) ;
 int M_IFLIB ;
 int NRXQSETS (TYPE_4__*) ;
 int NTXQSETS (TYPE_4__*) ;
 int STATE_LOCK (TYPE_4__*) ;
 int STATE_UNLOCK (TYPE_4__*) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_printf (int ,char*) ;
 int device_set_softc (int ,int *) ;
 int ether_ifdetach (int ) ;
 int free (TYPE_4__*,int ) ;
 scalar_t__ if_vlantrunkinuse (int ) ;
 int iflib_deregister (TYPE_4__*) ;
 int iflib_free_intr_mem (TYPE_4__*) ;
 int iflib_netmap_detach (int ) ;
 int iflib_rem_pfil (TYPE_4__*) ;
 int iflib_rx_structures_free (TYPE_4__*) ;
 int iflib_stop (TYPE_4__*) ;
 int iflib_tx_structures_free (TYPE_4__*) ;
 int iflib_unregister_vlan_handlers (TYPE_4__*) ;
 int led_destroy (int *) ;
 scalar_t__ pci_iov_detach (int ) ;
 struct taskqgroup* qgroup_if_config_tqg ;
 struct taskqgroup* qgroup_if_io_tqg ;
 int taskqgroup_detach (struct taskqgroup*,TYPE_6__*) ;
 int unref_ctx_core_offset (TYPE_4__*) ;

int
iflib_device_deregister(if_ctx_t ctx)
{
 if_t ifp = ctx->ifc_ifp;
 iflib_txq_t txq;
 iflib_rxq_t rxq;
 device_t dev = ctx->ifc_dev;
 int i, j;
 struct taskqgroup *tqg;
 iflib_fl_t fl;


 if (if_vlantrunkinuse(ifp)) {
  device_printf(dev, "Vlan in use, detach first\n");
  return (EBUSY);
 }







 STATE_LOCK(ctx);
 ctx->ifc_flags |= IFC_IN_DETACH;
 STATE_UNLOCK(ctx);


 iflib_unregister_vlan_handlers(ctx);

 iflib_netmap_detach(ifp);
 ether_ifdetach(ifp);

 CTX_LOCK(ctx);
 iflib_stop(ctx);
 CTX_UNLOCK(ctx);

 iflib_rem_pfil(ctx);
 if (ctx->ifc_led_dev != ((void*)0))
  led_destroy(ctx->ifc_led_dev);

 tqg = qgroup_if_io_tqg;
 for (txq = ctx->ifc_txqs, i = 0; i < NTXQSETS(ctx); i++, txq++) {
  callout_drain(&txq->ift_timer);
  if (txq->ift_task.gt_uniq != ((void*)0))
   taskqgroup_detach(tqg, &txq->ift_task);
 }
 for (i = 0, rxq = ctx->ifc_rxqs; i < NRXQSETS(ctx); i++, rxq++) {
  if (rxq->ifr_task.gt_uniq != ((void*)0))
   taskqgroup_detach(tqg, &rxq->ifr_task);

  for (j = 0, fl = rxq->ifr_fl; j < rxq->ifr_nfl; j++, fl++)
   free(fl->ifl_rx_bitmap, M_IFLIB);
 }
 tqg = qgroup_if_config_tqg;
 if (ctx->ifc_admin_task.gt_uniq != ((void*)0))
  taskqgroup_detach(tqg, &ctx->ifc_admin_task);
 if (ctx->ifc_vflr_task.gt_uniq != ((void*)0))
  taskqgroup_detach(tqg, &ctx->ifc_vflr_task);
 CTX_LOCK(ctx);
 IFDI_DETACH(ctx);
 CTX_UNLOCK(ctx);


 iflib_free_intr_mem(ctx);

 bus_generic_detach(dev);

 iflib_tx_structures_free(ctx);
 iflib_rx_structures_free(ctx);

 iflib_deregister(ctx);

 device_set_softc(ctx->ifc_dev, ((void*)0));
 if (ctx->ifc_flags & IFC_SC_ALLOCATED)
  free(ctx->ifc_softc, M_IFLIB);
 unref_ctx_core_offset(ctx);
 free(ctx, M_IFLIB);
 return (0);
}
