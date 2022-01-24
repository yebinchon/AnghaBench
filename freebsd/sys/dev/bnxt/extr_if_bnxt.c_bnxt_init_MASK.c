#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct ifmediareq {int dummy; } ;
struct ctx_hw_stats {int dummy; } ;
struct TYPE_20__ {scalar_t__ idi_vaddr; } ;
struct TYPE_24__ {int /*<<< orphan*/  rss_hash_type; TYPE_2__ rss_grp_tbl; int /*<<< orphan*/  mru; int /*<<< orphan*/  def_ring_grp; int /*<<< orphan*/  rss_id; } ;
struct TYPE_18__ {int /*<<< orphan*/  phys_id; } ;
struct TYPE_23__ {int v_bit; scalar_t__ stats_ctx_id; TYPE_12__ ring; void* cons; void* last_idx; } ;
struct TYPE_21__ {scalar_t__ idi_paddr; } ;
struct TYPE_22__ {scalar_t__ idi_paddr; } ;
struct bnxt_softc {int nrxqsets; int ntxqsets; TYPE_6__ vnic_info; int /*<<< orphan*/  ctx; TYPE_5__ def_cp_ring; TYPE_12__* tx_rings; TYPE_5__* tx_cp_rings; TYPE_3__ tx_stats; TYPE_11__* grp_info; TYPE_1__* scctx; TYPE_5__* rx_cp_rings; TYPE_12__* ag_rings; TYPE_12__* rx_rings; TYPE_4__ rx_stats; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_19__ {int /*<<< orphan*/  isc_max_frame_size; } ;
struct TYPE_17__ {int /*<<< orphan*/  grp_id; int /*<<< orphan*/  cp_ring_id; int /*<<< orphan*/  ag_ring_id; int /*<<< orphan*/  rx_ring_id; scalar_t__ stats_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 
 int /*<<< orphan*/  HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL ; 
 int /*<<< orphan*/  HWRM_RING_ALLOC_INPUT_RING_TYPE_RX ; 
 int /*<<< orphan*/  HWRM_RING_ALLOC_INPUT_RING_TYPE_TX ; 
 int HW_HASH_INDEX_SIZE ; 
 void* UINT32_MAX ; 
 int FUNC2 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_softc*,TYPE_6__*) ; 
 int FUNC6 (struct bnxt_softc*) ; 
 int FUNC7 (struct bnxt_softc*,int /*<<< orphan*/ ,TYPE_12__*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC8 (struct bnxt_softc*,TYPE_11__*) ; 
 int FUNC9 (struct bnxt_softc*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bnxt_softc*,TYPE_6__*) ; 
 int FUNC11 (struct bnxt_softc*,TYPE_5__*,scalar_t__) ; 
 int FUNC12 (struct bnxt_softc*,TYPE_6__*) ; 
 int FUNC13 (struct bnxt_softc*,TYPE_6__*) ; 
 int FUNC14 (struct bnxt_softc*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct ifmediareq*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC19(ctx);
	struct ifmediareq ifmr;
	int i, j;
	int rc;

	rc = FUNC6(softc);
	if (rc)
		return;
	FUNC3(softc);

	/* Allocate the default completion ring */
	softc->def_cp_ring.cons = UINT32_MAX;
	softc->def_cp_ring.v_bit = 1;
	FUNC16(&softc->def_cp_ring);
	rc = FUNC7(softc,
	    HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
	    &softc->def_cp_ring.ring,
	    (uint16_t)HWRM_NA_SIGNATURE,
	    HWRM_NA_SIGNATURE, true);
	if (rc)
		goto fail;

	/* And now set the default CP ring as the async CP ring */
	rc = FUNC2(softc);
	if (rc)
		goto fail;

	for (i = 0; i < softc->nrxqsets; i++) {
		/* Allocate the statistics context */
		rc = FUNC11(softc, &softc->rx_cp_rings[i],
		    softc->rx_stats.idi_paddr +
		    (sizeof(struct ctx_hw_stats) * i));
		if (rc)
			goto fail;

		/* Allocate the completion ring */
		softc->rx_cp_rings[i].cons = UINT32_MAX;
		softc->rx_cp_rings[i].v_bit = 1;
		softc->rx_cp_rings[i].last_idx = UINT32_MAX;
		FUNC16(&softc->rx_cp_rings[i]);
		rc = FUNC7(softc,
		    HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
		    &softc->rx_cp_rings[i].ring, (uint16_t)HWRM_NA_SIGNATURE,
		    HWRM_NA_SIGNATURE, true);
		if (rc)
			goto fail;

		/* Allocate the RX ring */
		rc = FUNC7(softc,
		    HWRM_RING_ALLOC_INPUT_RING_TYPE_RX,
		    &softc->rx_rings[i], (uint16_t)HWRM_NA_SIGNATURE,
		    HWRM_NA_SIGNATURE, false);
		if (rc)
			goto fail;
		FUNC0(&softc->rx_rings[i], 0);
		/* TODO: Cumulus+ doesn't need the double doorbell */
		FUNC0(&softc->rx_rings[i], 0);

		/* Allocate the AG ring */
		rc = FUNC7(softc,
		    HWRM_RING_ALLOC_INPUT_RING_TYPE_RX,
		    &softc->ag_rings[i], (uint16_t)HWRM_NA_SIGNATURE,
		    HWRM_NA_SIGNATURE, false);
		if (rc)
			goto fail;
		FUNC0(&softc->rx_rings[i], 0);
		/* TODO: Cumulus+ doesn't need the double doorbell */
		FUNC0(&softc->ag_rings[i], 0);

		/* Allocate the ring group */
		softc->grp_info[i].stats_ctx =
		    softc->rx_cp_rings[i].stats_ctx_id;
		softc->grp_info[i].rx_ring_id = softc->rx_rings[i].phys_id;
		softc->grp_info[i].ag_ring_id = softc->ag_rings[i].phys_id;
		softc->grp_info[i].cp_ring_id =
		    softc->rx_cp_rings[i].ring.phys_id;
		rc = FUNC8(softc, &softc->grp_info[i]);
		if (rc)
			goto fail;

	}

	/* Allocate the VNIC RSS context */
	rc = FUNC14(softc, &softc->vnic_info.rss_id);
	if (rc)
		goto fail;

	/* Allocate the vnic */
	softc->vnic_info.def_ring_grp = softc->grp_info[0].grp_id;
	softc->vnic_info.mru = softc->scctx->isc_max_frame_size;
	rc = FUNC12(softc, &softc->vnic_info);
	if (rc)
		goto fail;
	rc = FUNC13(softc, &softc->vnic_info);
	if (rc)
		goto fail;
	rc = FUNC10(softc, &softc->vnic_info);
	if (rc)
		goto fail;

	/* Enable RSS on the VNICs */
	for (i = 0, j = 0; i < HW_HASH_INDEX_SIZE; i++) {
		((uint16_t *)
		    softc->vnic_info.rss_grp_tbl.idi_vaddr)[i] =
		    FUNC18(softc->grp_info[j].grp_id);
		if (++j == softc->nrxqsets)
			j = 0;
	}

	rc = FUNC9(softc, &softc->vnic_info,
	    softc->vnic_info.rss_hash_type);
	if (rc)
		goto fail;

	rc = FUNC15(softc);
	if (rc)
		goto fail;

	for (i = 0; i < softc->ntxqsets; i++) {
		/* Allocate the statistics context */
		rc = FUNC11(softc, &softc->tx_cp_rings[i],
		    softc->tx_stats.idi_paddr +
		    (sizeof(struct ctx_hw_stats) * i));
		if (rc)
			goto fail;

		/* Allocate the completion ring */
		softc->tx_cp_rings[i].cons = UINT32_MAX;
		softc->tx_cp_rings[i].v_bit = 1;
		FUNC16(&softc->tx_cp_rings[i]);
		rc = FUNC7(softc,
		    HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
		    &softc->tx_cp_rings[i].ring, (uint16_t)HWRM_NA_SIGNATURE,
		    HWRM_NA_SIGNATURE, false);
		if (rc)
			goto fail;

		/* Allocate the TX ring */
		rc = FUNC7(softc,
		    HWRM_RING_ALLOC_INPUT_RING_TYPE_TX,
		    &softc->tx_rings[i], softc->tx_cp_rings[i].ring.phys_id,
		    softc->tx_cp_rings[i].stats_ctx_id, false);
		if (rc)
			goto fail;
		FUNC1(&softc->tx_rings[i], 0);
		/* TODO: Cumulus+ doesn't need the double doorbell */
		FUNC1(&softc->tx_rings[i], 0);
	}

	FUNC4(&softc->def_cp_ring);
	FUNC17(softc->ctx, &ifmr);
	FUNC5(softc, &softc->vnic_info);
	return;

fail:
	FUNC6(softc);
	FUNC3(softc);
	return;
}