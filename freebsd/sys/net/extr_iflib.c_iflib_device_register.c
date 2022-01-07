
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_8__ ;
typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_1__ ;


typedef size_t uint16_t ;
struct ether_vlan_header {int dummy; } ;
typedef TYPE_4__* kobjop_desc_t ;
typedef TYPE_5__* kobj_t ;
typedef int kobj_method_t ;
typedef int if_t ;
typedef TYPE_6__* if_softc_ctx_t ;
typedef TYPE_7__* if_shared_ctx_t ;
typedef TYPE_8__* if_ctx_t ;
typedef int device_t ;
struct TYPE_43__ {int octet; } ;
struct TYPE_47__ {int isc_capabilities; int isc_tx_csum_flags; int isc_capenable; int isc_ntxqsets; int isc_ntxqsets_max; int isc_nrxqsets; int isc_nrxqsets_max; int* isc_ntxd; int isc_tx_nsegments; int isc_tx_tso_segments_max; int isc_rss_table_size; int isc_rss_table_mask; int isc_vectors; scalar_t__ isc_msix_bar; scalar_t__ isc_intr; int isc_tx_tso_segsize_max; int isc_tx_tso_size_max; int * isc_nrxd; int isc_media; int * isc_txrx; } ;
struct TYPE_49__ {int ifc_flags; struct TYPE_49__* ifc_softc; int ifc_dev; int ifc_admin_task; int ifc_ifp; TYPE_2__ ifc_mac; int isc_legacy_intr; int ifc_sysctl_core_offset; int ifc_cpus; int ifc_mediap; int ifc_txrx; TYPE_6__ ifc_softc_ctx; TYPE_7__* ifc_sctx; } ;
struct TYPE_48__ {int isc_flags; TYPE_3__* isc_driver; } ;
struct TYPE_46__ {TYPE_1__* ops; } ;
struct TYPE_45__ {int deflt; } ;
struct TYPE_44__ {int size; } ;
struct TYPE_42__ {int cls; } ;


 int CPU_COPY (int *,int *) ;
 scalar_t__ CPU_COUNT (int *) ;
 int CTX_LOCK (TYPE_8__*) ;
 int CTX_UNLOCK (TYPE_8__*) ;
 int DEBUGNET_SET (int ,int ) ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int GROUPTASK_INIT (int *,int ,int ,TYPE_8__*) ;
 int IFCAP_HWSTATS ;
 int IFCAP_NOMAP ;
 int IFCAP_TSO ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFC_INIT_DONE ;
 int IFC_SC_ALLOCATED ;
 int IFDI_ATTACH_POST (TYPE_8__*) ;
 int IFDI_ATTACH_PRE (TYPE_8__*) ;
 int IFDI_DETACH (TYPE_8__*) ;
 int IFDI_INTR_DISABLE (TYPE_8__*) ;
 int IFDI_MSIX_INTR_ASSIGN (TYPE_8__*,int) ;
 int IFLIB_DRIVER_MEDIA ;
 int IFLIB_HAS_RXCQ ;
 int IFLIB_HAS_TXCQ ;
 scalar_t__ IFLIB_INTR_LEGACY ;
 scalar_t__ IFLIB_INTR_MSI ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int IFLIB_SKIP_MSIX ;
 int INTR_CPUS ;
 int IP_MAXPACKET ;
 int MAX_SINGLE_PACKET_FRACTION ;
 int MPASS (int) ;
 int M_IFLIB ;
 int M_WAITOK ;
 int M_ZERO ;
 int _iflib_pre_assert (TYPE_6__*) ;
 int _task_fn_admin ;
 int all_cpus ;
 scalar_t__ bus_get_cpus (int ,int ,int,int *) ;
 int device_printf (int ,char*,...) ;
 int device_set_softc (int ,TYPE_8__*) ;
 int ether_ifattach (int ,int ) ;
 int ether_ifdetach (int ) ;
 int free (TYPE_8__*,int ) ;
 int get_ctx_core_offset (TYPE_8__*) ;
 int if_getcapabilities (int ) ;
 int if_setcapabilities (int ,int) ;
 int if_setcapenable (int ,int) ;
 int if_setgetcounterfn (int ,int ) ;
 int if_sethwtsomax (int ,int ) ;
 int if_sethwtsomaxsegcount (int ,int) ;
 int if_sethwtsomaxsegsize (int ,int ) ;
 int if_setifheaderlen (int ,int) ;
 TYPE_4__ ifdi_rx_queue_intr_enable_desc ;
 TYPE_4__ ifdi_tx_queue_intr_enable_desc ;
 int iflib ;
 int iflib_add_device_sysctl_post (TYPE_8__*) ;
 int iflib_add_device_sysctl_pre (TYPE_8__*) ;
 int iflib_add_pfil (TYPE_8__*) ;
 int iflib_deregister (TYPE_8__*) ;
 int iflib_free_intr_mem (TYPE_8__*) ;
 int iflib_if_get_counter ;
 int iflib_legacy_setup (TYPE_8__*,int ,TYPE_8__*,int*,char*) ;
 int iflib_msix_init (TYPE_8__*) ;
 int iflib_netmap_attach (TYPE_8__*) ;
 int iflib_qset_structures_setup (TYPE_8__*) ;
 int iflib_queues_alloc (TYPE_8__*) ;
 int iflib_register (TYPE_8__*) ;
 int iflib_reset_qvalues (TYPE_8__*) ;
 int iflib_rx_structures_free (TYPE_8__*) ;
 int iflib_tx_structures_free (TYPE_8__*) ;
 int * kobj_lookup_method (int ,int *,TYPE_4__*) ;
 void* malloc (int,int ,int) ;
 void* max (int,int) ;
 int min (int ,int ) ;
 int qgroup_if_config_tqg ;
 int taskqgroup_attach (int ,int *,TYPE_8__*,int *,int *,char*) ;
 int taskqgroup_detach (int ,int *) ;

int
iflib_device_register(device_t dev, void *sc, if_shared_ctx_t sctx, if_ctx_t *ctxp)
{
 if_ctx_t ctx;
 if_t ifp;
 if_softc_ctx_t scctx;
 kobjop_desc_t kobj_desc;
 kobj_method_t *kobj_method;
 int err, msix, rid;
 uint16_t main_rxq, main_txq;

 ctx = malloc(sizeof(* ctx), M_IFLIB, M_WAITOK|M_ZERO);

 if (sc == ((void*)0)) {
  sc = malloc(sctx->isc_driver->size, M_IFLIB, M_WAITOK|M_ZERO);
  device_set_softc(dev, ctx);
  ctx->ifc_flags |= IFC_SC_ALLOCATED;
 }

 ctx->ifc_sctx = sctx;
 ctx->ifc_dev = dev;
 ctx->ifc_softc = sc;

 if ((err = iflib_register(ctx)) != 0) {
  device_printf(dev, "iflib_register failed %d\n", err);
  goto fail_ctx_free;
 }
 iflib_add_device_sysctl_pre(ctx);

 scctx = &ctx->ifc_softc_ctx;
 ifp = ctx->ifc_ifp;

 iflib_reset_qvalues(ctx);
 CTX_LOCK(ctx);
 if ((err = IFDI_ATTACH_PRE(ctx)) != 0) {
  device_printf(dev, "IFDI_ATTACH_PRE failed %d\n", err);
  goto fail_unlock;
 }
 _iflib_pre_assert(scctx);
 ctx->ifc_txrx = *scctx->isc_txrx;

 if (sctx->isc_flags & IFLIB_DRIVER_MEDIA)
  ctx->ifc_mediap = scctx->isc_media;






 if_setcapabilities(ifp,
     scctx->isc_capabilities | IFCAP_HWSTATS | IFCAP_NOMAP);
 if_setcapenable(ifp,
     scctx->isc_capenable | IFCAP_HWSTATS | IFCAP_NOMAP);

 if (scctx->isc_ntxqsets == 0 || (scctx->isc_ntxqsets_max && scctx->isc_ntxqsets_max < scctx->isc_ntxqsets))
  scctx->isc_ntxqsets = scctx->isc_ntxqsets_max;
 if (scctx->isc_nrxqsets == 0 || (scctx->isc_nrxqsets_max && scctx->isc_nrxqsets_max < scctx->isc_nrxqsets))
  scctx->isc_nrxqsets = scctx->isc_nrxqsets_max;

 main_txq = (sctx->isc_flags & IFLIB_HAS_TXCQ) ? 1 : 0;
 main_rxq = (sctx->isc_flags & IFLIB_HAS_RXCQ) ? 1 : 0;


 device_printf(dev, "Using %d TX descriptors and %d RX descriptors\n",
     scctx->isc_ntxd[main_txq], scctx->isc_nrxd[main_rxq]);

 if (scctx->isc_tx_nsegments > scctx->isc_ntxd[main_txq] /
     MAX_SINGLE_PACKET_FRACTION)
  scctx->isc_tx_nsegments = max(1, scctx->isc_ntxd[main_txq] /
      MAX_SINGLE_PACKET_FRACTION);
 if (scctx->isc_tx_tso_segments_max > scctx->isc_ntxd[main_txq] /
     MAX_SINGLE_PACKET_FRACTION)
  scctx->isc_tx_tso_segments_max = max(1,
      scctx->isc_ntxd[main_txq] / MAX_SINGLE_PACKET_FRACTION);


 if (if_getcapabilities(ifp) & IFCAP_TSO) {




  if_sethwtsomax(ifp, min(scctx->isc_tx_tso_size_max,
      IP_MAXPACKET));
  if_sethwtsomaxsegcount(ifp, scctx->isc_tx_tso_segments_max - 3);
  if_sethwtsomaxsegsize(ifp, scctx->isc_tx_tso_segsize_max);
 }
 if (scctx->isc_rss_table_size == 0)
  scctx->isc_rss_table_size = 64;
 scctx->isc_rss_table_mask = scctx->isc_rss_table_size-1;

 GROUPTASK_INIT(&ctx->ifc_admin_task, 0, _task_fn_admin, ctx);

 taskqgroup_attach(qgroup_if_config_tqg, &ctx->ifc_admin_task, ctx,
     ((void*)0), ((void*)0), "admin");


 if (bus_get_cpus(dev, INTR_CPUS, sizeof(ctx->ifc_cpus), &ctx->ifc_cpus) != 0) {
  device_printf(dev, "Unable to fetch CPU list\n");
  CPU_COPY(&all_cpus, &ctx->ifc_cpus);
 }
 MPASS(CPU_COUNT(&ctx->ifc_cpus) > 0);





 if (sctx->isc_flags & IFLIB_SKIP_MSIX) {
  msix = scctx->isc_vectors;
 } else if (scctx->isc_msix_bar != 0)




  msix = iflib_msix_init(ctx);
 else {
  scctx->isc_vectors = 1;
  scctx->isc_ntxqsets = 1;
  scctx->isc_nrxqsets = 1;
  scctx->isc_intr = IFLIB_INTR_LEGACY;
  msix = 0;
 }

 if ((err = iflib_queues_alloc(ctx))) {
  device_printf(dev, "Unable to allocate queue memory\n");
  goto fail_intr_free;
 }

 if ((err = iflib_qset_structures_setup(ctx)))
  goto fail_queues;




 ctx->ifc_sysctl_core_offset = get_ctx_core_offset(ctx);
 IFDI_INTR_DISABLE(ctx);

 if (msix > 1) {




  kobj_desc = &ifdi_rx_queue_intr_enable_desc;
  kobj_method = kobj_lookup_method(((kobj_t)ctx)->ops->cls, ((void*)0),
      kobj_desc);
  if (kobj_method == &kobj_desc->deflt) {
   device_printf(dev,
       "MSI-X requires ifdi_rx_queue_intr_enable method");
   err = EOPNOTSUPP;
   goto fail_queues;
  }
  kobj_desc = &ifdi_tx_queue_intr_enable_desc;
  kobj_method = kobj_lookup_method(((kobj_t)ctx)->ops->cls, ((void*)0),
      kobj_desc);
  if (kobj_method == &kobj_desc->deflt) {
   device_printf(dev,
       "MSI-X requires ifdi_tx_queue_intr_enable method");
   err = EOPNOTSUPP;
   goto fail_queues;
  }






  err = IFDI_MSIX_INTR_ASSIGN(ctx, msix);
  if (err != 0) {
   device_printf(dev, "IFDI_MSIX_INTR_ASSIGN failed %d\n",
       err);
   goto fail_queues;
  }
 } else if (scctx->isc_intr != IFLIB_INTR_MSIX) {
  rid = 0;
  if (scctx->isc_intr == IFLIB_INTR_MSI) {
   MPASS(msix == 1);
   rid = 1;
  }
  if ((err = iflib_legacy_setup(ctx, ctx->isc_legacy_intr, ctx->ifc_softc, &rid, "irq0")) != 0) {
   device_printf(dev, "iflib_legacy_setup failed %d\n", err);
   goto fail_queues;
  }
 } else {
  device_printf(dev,
      "Cannot use iflib with only 1 MSI-X interrupt!\n");
  err = ENODEV;
  goto fail_intr_free;
 }

 ether_ifattach(ctx->ifc_ifp, ctx->ifc_mac.octet);

 if ((err = IFDI_ATTACH_POST(ctx)) != 0) {
  device_printf(dev, "IFDI_ATTACH_POST failed %d\n", err);
  goto fail_detach;
 }






 if (if_getcapabilities(ifp) & IFCAP_VLAN_MTU)
  if_setifheaderlen(ifp, sizeof(struct ether_vlan_header));

 if ((err = iflib_netmap_attach(ctx))) {
  device_printf(ctx->ifc_dev, "netmap attach failed: %d\n", err);
  goto fail_detach;
 }
 *ctxp = ctx;

 DEBUGNET_SET(ctx->ifc_ifp, iflib);

 if_setgetcounterfn(ctx->ifc_ifp, iflib_if_get_counter);
 iflib_add_device_sysctl_post(ctx);
 iflib_add_pfil(ctx);
 ctx->ifc_flags |= IFC_INIT_DONE;
 CTX_UNLOCK(ctx);

 return (0);

fail_detach:
 ether_ifdetach(ctx->ifc_ifp);
fail_intr_free:
 iflib_free_intr_mem(ctx);
fail_queues:
 iflib_tx_structures_free(ctx);
 iflib_rx_structures_free(ctx);
 taskqgroup_detach(qgroup_if_config_tqg, &ctx->ifc_admin_task);
 IFDI_DETACH(ctx);
fail_unlock:
 CTX_UNLOCK(ctx);
 iflib_deregister(ctx);
fail_ctx_free:
 device_set_softc(ctx->ifc_dev, ((void*)0));
        if (ctx->ifc_flags & IFC_SC_ALLOCATED)
                free(ctx->ifc_softc, M_IFLIB);
        free(ctx, M_IFLIB);
 return (err);
}
