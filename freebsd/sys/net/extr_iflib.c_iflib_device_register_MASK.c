#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_8__ ;
typedef  struct TYPE_48__   TYPE_7__ ;
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct ether_vlan_header {int dummy; } ;
typedef  TYPE_4__* kobjop_desc_t ;
typedef  TYPE_5__* kobj_t ;
typedef  int /*<<< orphan*/  kobj_method_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_6__* if_softc_ctx_t ;
typedef  TYPE_7__* if_shared_ctx_t ;
typedef  TYPE_8__* if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_43__ {int /*<<< orphan*/  octet; } ;
struct TYPE_47__ {int isc_capabilities; int isc_tx_csum_flags; int isc_capenable; int isc_ntxqsets; int isc_ntxqsets_max; int isc_nrxqsets; int isc_nrxqsets_max; int* isc_ntxd; int isc_tx_nsegments; int isc_tx_tso_segments_max; int isc_rss_table_size; int isc_rss_table_mask; int isc_vectors; scalar_t__ isc_msix_bar; scalar_t__ isc_intr; int /*<<< orphan*/  isc_tx_tso_segsize_max; int /*<<< orphan*/  isc_tx_tso_size_max; int /*<<< orphan*/ * isc_nrxd; int /*<<< orphan*/  isc_media; int /*<<< orphan*/ * isc_txrx; } ;
struct TYPE_49__ {int ifc_flags; struct TYPE_49__* ifc_softc; int /*<<< orphan*/  ifc_dev; int /*<<< orphan*/  ifc_admin_task; int /*<<< orphan*/  ifc_ifp; TYPE_2__ ifc_mac; int /*<<< orphan*/  isc_legacy_intr; int /*<<< orphan*/  ifc_sysctl_core_offset; int /*<<< orphan*/  ifc_cpus; int /*<<< orphan*/  ifc_mediap; int /*<<< orphan*/  ifc_txrx; TYPE_6__ ifc_softc_ctx; TYPE_7__* ifc_sctx; } ;
struct TYPE_48__ {int isc_flags; TYPE_3__* isc_driver; } ;
struct TYPE_46__ {TYPE_1__* ops; } ;
struct TYPE_45__ {int /*<<< orphan*/  deflt; } ;
struct TYPE_44__ {int size; } ;
struct TYPE_42__ {int /*<<< orphan*/  cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int IFCAP_HWSTATS ; 
 int IFCAP_NOMAP ; 
 int IFCAP_TSO ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int IFC_INIT_DONE ; 
 int IFC_SC_ALLOCATED ; 
 int FUNC6 (TYPE_8__*) ; 
 int FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int FUNC10 (TYPE_8__*,int) ; 
 int IFLIB_DRIVER_MEDIA ; 
 int IFLIB_HAS_RXCQ ; 
 int IFLIB_HAS_TXCQ ; 
 scalar_t__ IFLIB_INTR_LEGACY ; 
 scalar_t__ IFLIB_INTR_MSI ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int IFLIB_SKIP_MSIX ; 
 int /*<<< orphan*/  INTR_CPUS ; 
 int /*<<< orphan*/  IP_MAXPACKET ; 
 int MAX_SINGLE_PACKET_FRACTION ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  _task_fn_admin ; 
 int /*<<< orphan*/  all_cpus ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ ifdi_rx_queue_intr_enable_desc ; 
 TYPE_4__ ifdi_tx_queue_intr_enable_desc ; 
 int /*<<< orphan*/  iflib ; 
 int /*<<< orphan*/  FUNC28 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_8__*) ; 
 int /*<<< orphan*/  iflib_if_get_counter ; 
 int FUNC33 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_8__*,int*,char*) ; 
 int FUNC34 (TYPE_8__*) ; 
 int FUNC35 (TYPE_8__*) ; 
 int FUNC36 (TYPE_8__*) ; 
 int FUNC37 (TYPE_8__*) ; 
 int FUNC38 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC43 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC44 (int,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qgroup_if_config_tqg ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC48(device_t dev, void *sc, if_shared_ctx_t sctx, if_ctx_t *ctxp)
{
	if_ctx_t ctx;
	if_t ifp;
	if_softc_ctx_t scctx;
	kobjop_desc_t kobj_desc;
	kobj_method_t *kobj_method;
	int err, msix, rid;
	uint16_t main_rxq, main_txq;

	ctx = FUNC43(sizeof(* ctx), M_IFLIB, M_WAITOK|M_ZERO);

	if (sc == NULL) {
		sc = FUNC43(sctx->isc_driver->size, M_IFLIB, M_WAITOK|M_ZERO);
		FUNC15(dev, ctx);
		ctx->ifc_flags |= IFC_SC_ALLOCATED;
	}

	ctx->ifc_sctx = sctx;
	ctx->ifc_dev = dev;
	ctx->ifc_softc = sc;

	if ((err = FUNC38(ctx)) != 0) {
		FUNC14(dev, "iflib_register failed %d\n", err);
		goto fail_ctx_free;
	}
	FUNC29(ctx);

	scctx = &ctx->ifc_softc_ctx;
	ifp = ctx->ifc_ifp;

	FUNC39(ctx);
	FUNC2(ctx);
	if ((err = FUNC7(ctx)) != 0) {
		FUNC14(dev, "IFDI_ATTACH_PRE failed %d\n", err);
		goto fail_unlock;
	}
	FUNC12(scctx);
	ctx->ifc_txrx = *scctx->isc_txrx;

	if (sctx->isc_flags & IFLIB_DRIVER_MEDIA)
		ctx->ifc_mediap = scctx->isc_media;

#ifdef INVARIANTS
	if (scctx->isc_capabilities & IFCAP_TXCSUM)
		MPASS(scctx->isc_tx_csum_flags);
#endif

	FUNC21(ifp,
	    scctx->isc_capabilities | IFCAP_HWSTATS | IFCAP_NOMAP);
	FUNC22(ifp,
	    scctx->isc_capenable | IFCAP_HWSTATS | IFCAP_NOMAP);

	if (scctx->isc_ntxqsets == 0 || (scctx->isc_ntxqsets_max && scctx->isc_ntxqsets_max < scctx->isc_ntxqsets))
		scctx->isc_ntxqsets = scctx->isc_ntxqsets_max;
	if (scctx->isc_nrxqsets == 0 || (scctx->isc_nrxqsets_max && scctx->isc_nrxqsets_max < scctx->isc_nrxqsets))
		scctx->isc_nrxqsets = scctx->isc_nrxqsets_max;

	main_txq = (sctx->isc_flags & IFLIB_HAS_TXCQ) ? 1 : 0;
	main_rxq = (sctx->isc_flags & IFLIB_HAS_RXCQ) ? 1 : 0;

	/* XXX change for per-queue sizes */
	FUNC14(dev, "Using %d TX descriptors and %d RX descriptors\n",
	    scctx->isc_ntxd[main_txq], scctx->isc_nrxd[main_rxq]);

	if (scctx->isc_tx_nsegments > scctx->isc_ntxd[main_txq] /
	    MAX_SINGLE_PACKET_FRACTION)
		scctx->isc_tx_nsegments = FUNC44(1, scctx->isc_ntxd[main_txq] /
		    MAX_SINGLE_PACKET_FRACTION);
	if (scctx->isc_tx_tso_segments_max > scctx->isc_ntxd[main_txq] /
	    MAX_SINGLE_PACKET_FRACTION)
		scctx->isc_tx_tso_segments_max = FUNC44(1,
		    scctx->isc_ntxd[main_txq] / MAX_SINGLE_PACKET_FRACTION);

	/* TSO parameters - dig these out of the data sheet - simply correspond to tag setup */
	if (FUNC20(ifp) & IFCAP_TSO) {
		/*
		 * The stack can't handle a TSO size larger than IP_MAXPACKET,
		 * but some MACs do.
		 */
		FUNC24(ifp, FUNC45(scctx->isc_tx_tso_size_max,
		    IP_MAXPACKET));
		/*
		 * Take maximum number of m_pullup(9)'s in iflib_parse_header()
		 * into account.  In the worst case, each of these calls will
		 * add another mbuf and, thus, the requirement for another DMA
		 * segment.  So for best performance, it doesn't make sense to
		 * advertize a maximum of TSO segments that typically will
		 * require defragmentation in iflib_encap().
		 */
		FUNC25(ifp, scctx->isc_tx_tso_segments_max - 3);
		FUNC26(ifp, scctx->isc_tx_tso_segsize_max);
	}
	if (scctx->isc_rss_table_size == 0)
		scctx->isc_rss_table_size = 64;
	scctx->isc_rss_table_mask = scctx->isc_rss_table_size-1;

	FUNC5(&ctx->ifc_admin_task, 0, _task_fn_admin, ctx);
	/* XXX format name */
	FUNC46(qgroup_if_config_tqg, &ctx->ifc_admin_task, ctx,
	    NULL, NULL, "admin");

	/* Set up cpu set.  If it fails, use the set of all CPUs. */
	if (FUNC13(dev, INTR_CPUS, sizeof(ctx->ifc_cpus), &ctx->ifc_cpus) != 0) {
		FUNC14(dev, "Unable to fetch CPU list\n");
		FUNC0(&all_cpus, &ctx->ifc_cpus);
	}
	FUNC11(FUNC1(&ctx->ifc_cpus) > 0);

	/*
	** Now set up MSI or MSI-X, should return us the number of supported
	** vectors (will be 1 for a legacy interrupt and MSI).
	*/
	if (sctx->isc_flags & IFLIB_SKIP_MSIX) {
		msix = scctx->isc_vectors;
	} else if (scctx->isc_msix_bar != 0)
	       /*
		* The simple fact that isc_msix_bar is not 0 does not mean we
		* we have a good value there that is known to work.
		*/
		msix = FUNC34(ctx);
	else {
		scctx->isc_vectors = 1;
		scctx->isc_ntxqsets = 1;
		scctx->isc_nrxqsets = 1;
		scctx->isc_intr = IFLIB_INTR_LEGACY;
		msix = 0;
	}
	/* Get memory for the station queues */
	if ((err = FUNC37(ctx))) {
		FUNC14(dev, "Unable to allocate queue memory\n");
		goto fail_intr_free;
	}

	if ((err = FUNC36(ctx)))
		goto fail_queues;

	/*
	 * Now that we know how many queues there are, get the core offset.
	 */
	ctx->ifc_sysctl_core_offset = FUNC19(ctx);

	/*
	 * Group taskqueues aren't properly set up until SMP is started,
	 * so we disable interrupts until we can handle them post
	 * SI_SUB_SMP.
	 *
	 * XXX: disabling interrupts doesn't actually work, at least for
	 * the non-MSI case.  When they occur before SI_SUB_SMP completes,
	 * we do null handling and depend on this not causing too large an
	 * interrupt storm.
	 */
	FUNC9(ctx);

	if (msix > 1) {
		/*
		 * When using MSI-X, ensure that ifdi_{r,t}x_queue_intr_enable
		 * aren't the default NULL implementation.
		 */
		kobj_desc = &ifdi_rx_queue_intr_enable_desc;
		kobj_method = FUNC42(((kobj_t)ctx)->ops->cls, NULL,
		    kobj_desc);
		if (kobj_method == &kobj_desc->deflt) {
			FUNC14(dev,
			    "MSI-X requires ifdi_rx_queue_intr_enable method");
			err = EOPNOTSUPP;
			goto fail_queues;
		}
		kobj_desc = &ifdi_tx_queue_intr_enable_desc;
		kobj_method = FUNC42(((kobj_t)ctx)->ops->cls, NULL,
		    kobj_desc);
		if (kobj_method == &kobj_desc->deflt) {
			FUNC14(dev,
			    "MSI-X requires ifdi_tx_queue_intr_enable method");
			err = EOPNOTSUPP;
			goto fail_queues;
		}

		/*
		 * Assign the MSI-X vectors.
		 * Note that the default NULL ifdi_msix_intr_assign method will
		 * fail here, too.
		 */
		err = FUNC10(ctx, msix);
		if (err != 0) {
			FUNC14(dev, "IFDI_MSIX_INTR_ASSIGN failed %d\n",
			    err);
			goto fail_queues;
		}
	} else if (scctx->isc_intr != IFLIB_INTR_MSIX) {
		rid = 0;
		if (scctx->isc_intr == IFLIB_INTR_MSI) {
			FUNC11(msix == 1);
			rid = 1;
		}
		if ((err = FUNC33(ctx, ctx->isc_legacy_intr, ctx->ifc_softc, &rid, "irq0")) != 0) {
			FUNC14(dev, "iflib_legacy_setup failed %d\n", err);
			goto fail_queues;
		}
	} else {
		FUNC14(dev,
		    "Cannot use iflib with only 1 MSI-X interrupt!\n");
		err = ENODEV;
		goto fail_intr_free;
	}

	FUNC16(ctx->ifc_ifp, ctx->ifc_mac.octet);

	if ((err = FUNC6(ctx)) != 0) {
		FUNC14(dev, "IFDI_ATTACH_POST failed %d\n", err);
		goto fail_detach;
	}

	/*
	 * Tell the upper layer(s) if IFCAP_VLAN_MTU is supported.
	 * This must appear after the call to ether_ifattach() because
	 * ether_ifattach() sets if_hdrlen to the default value.
	 */
	if (FUNC20(ifp) & IFCAP_VLAN_MTU)
		FUNC27(ifp, sizeof(struct ether_vlan_header));

	if ((err = FUNC35(ctx))) {
		FUNC14(ctx->ifc_dev, "netmap attach failed: %d\n", err);
		goto fail_detach;
	}
	*ctxp = ctx;

	FUNC4(ctx->ifc_ifp, iflib);

	FUNC23(ctx->ifc_ifp, iflib_if_get_counter);
	FUNC28(ctx);
	FUNC30(ctx);
	ctx->ifc_flags |= IFC_INIT_DONE;
	FUNC3(ctx);

	return (0);

fail_detach:
	FUNC17(ctx->ifc_ifp);
fail_intr_free:
	FUNC32(ctx);
fail_queues:
	FUNC41(ctx);
	FUNC40(ctx);
	FUNC47(qgroup_if_config_tqg, &ctx->ifc_admin_task);
	FUNC8(ctx);
fail_unlock:
	FUNC3(ctx);
	FUNC31(ctx);
fail_ctx_free:
	FUNC15(ctx->ifc_dev, NULL);
        if (ctx->ifc_flags & IFC_SC_ALLOCATED)
                FUNC18(ctx->ifc_softc, M_IFLIB);
        FUNC18(ctx, M_IFLIB);
	return (err);
}