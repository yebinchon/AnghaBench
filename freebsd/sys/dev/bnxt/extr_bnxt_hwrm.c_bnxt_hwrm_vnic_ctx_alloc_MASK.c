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
struct hwrm_vnic_rss_cos_lb_ctx_alloc_output {int /*<<< orphan*/  rss_cos_lb_ctx_id; } ;
struct hwrm_vnic_rss_cos_lb_ctx_alloc_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int EDOOFUS ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 
 int /*<<< orphan*/  HWRM_VNIC_RSS_COS_LB_CTX_ALLOC ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct bnxt_softc *softc, uint16_t *ctx_id)
{
	struct hwrm_vnic_rss_cos_lb_ctx_alloc_input req = {0};
	struct hwrm_vnic_rss_cos_lb_ctx_alloc_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;

	if (*ctx_id != (uint16_t)HWRM_NA_SIGNATURE) {
		FUNC4(softc->dev,
		    "Attempt to re-allocate vnic ctx %04x\n", *ctx_id);
		return EDOOFUS;
	}

	FUNC3(softc, &req, HWRM_VNIC_RSS_COS_LB_CTX_ALLOC);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	*ctx_id = FUNC5(resp->rss_cos_lb_ctx_id);

fail:
	FUNC1(softc);
	return (rc);
}