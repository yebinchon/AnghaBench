#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct hwrm_ring_grp_alloc_output {int /*<<< orphan*/  ring_group_id; } ;
struct hwrm_ring_grp_alloc_input {void* sc; void* ar; void* rr; void* cr; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; int /*<<< orphan*/  dev; } ;
struct bnxt_grp_info {int /*<<< orphan*/  grp_id; int /*<<< orphan*/  stats_ctx; int /*<<< orphan*/  ag_ring_id; int /*<<< orphan*/  rx_ring_id; int /*<<< orphan*/  cp_ring_id; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int EDOOFUS ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 
 int /*<<< orphan*/  HWRM_RING_GRP_ALLOC ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_ring_grp_alloc_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_ring_grp_alloc_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct bnxt_softc *softc, struct bnxt_grp_info *grp)
{
	struct hwrm_ring_grp_alloc_input req = {0};
	struct hwrm_ring_grp_alloc_output *resp;
	int rc = 0;

	if (grp->grp_id != (uint16_t)HWRM_NA_SIGNATURE) {
		FUNC4(softc->dev,
		    "Attempt to re-allocate ring group %04x\n", grp->grp_id);
		return EDOOFUS;
	}

	resp = (void *)softc->hwrm_cmd_resp.idi_vaddr;
	FUNC3(softc, &req, HWRM_RING_GRP_ALLOC);
	req.cr = FUNC5(grp->cp_ring_id);
	req.rr = FUNC5(grp->rx_ring_id);
	req.ar = FUNC5(grp->ag_ring_id);
	req.sc = FUNC5(grp->stats_ctx);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	grp->grp_id = FUNC6(resp->ring_group_id);

fail:
	FUNC1(softc);
	return rc;
}