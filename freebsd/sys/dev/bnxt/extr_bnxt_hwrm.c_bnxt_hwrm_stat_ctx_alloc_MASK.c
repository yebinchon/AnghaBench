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
typedef  int /*<<< orphan*/  uint64_t ;
struct hwrm_stat_ctx_alloc_output {int /*<<< orphan*/  stat_ctx_id; } ;
struct hwrm_stat_ctx_alloc_input {int /*<<< orphan*/  stats_dma_addr; int /*<<< orphan*/  update_period_ms; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; int /*<<< orphan*/  dev; } ;
struct bnxt_cp_ring {int /*<<< orphan*/  stats_ctx_id; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int EDOOFUS ; 
 int /*<<< orphan*/  HWRM_NA_SIGNATURE ; 
 int /*<<< orphan*/  HWRM_STAT_CTX_ALLOC ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_stat_ctx_alloc_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_stat_ctx_alloc_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct bnxt_softc *softc, struct bnxt_cp_ring *cpr,
    uint64_t paddr)
{
	struct hwrm_stat_ctx_alloc_input req = {0};
	struct hwrm_stat_ctx_alloc_output *resp;
	int rc = 0;

	if (cpr->stats_ctx_id != HWRM_NA_SIGNATURE) {
		FUNC4(softc->dev,
		    "Attempt to re-allocate stats ctx %08x\n",
		    cpr->stats_ctx_id);
		return EDOOFUS;
	}

	resp = (void *)softc->hwrm_cmd_resp.idi_vaddr;
	FUNC3(softc, &req, HWRM_STAT_CTX_ALLOC);

	req.update_period_ms = FUNC5(1000);
	req.stats_dma_addr = FUNC6(paddr);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	cpr->stats_ctx_id = FUNC7(resp->stat_ctx_id);

fail:
	FUNC1(softc);

	return rc;
}