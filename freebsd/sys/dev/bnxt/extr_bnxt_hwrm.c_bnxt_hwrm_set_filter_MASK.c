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
typedef  int uint32_t ;
struct hwrm_cfa_l2_filter_alloc_output {int /*<<< orphan*/  flow_id; int /*<<< orphan*/  l2_filter_id; } ;
struct hwrm_cfa_l2_filter_alloc_input {int /*<<< orphan*/  l2_addr_mask; int /*<<< orphan*/  l2_addr; int /*<<< orphan*/  dst_id; void* enables; void* flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_vnic_info {int filter_id; void* flow_id; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  ctx; TYPE_1__ hwrm_cmd_resp; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int EDOOFUS ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  HWRM_CFA_L2_FILTER_ALLOC ; 
 int HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_DST_ID ; 
 int HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR ; 
 int HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR_MASK ; 
 int HWRM_CFA_L2_FILTER_ALLOC_INPUT_FLAGS_PATH_RX ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_cfa_l2_filter_alloc_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_cfa_l2_filter_alloc_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC12(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic)
{
	struct hwrm_cfa_l2_filter_alloc_input	req = {0};
	struct hwrm_cfa_l2_filter_alloc_output	*resp;
	uint32_t enables = 0;
	int rc = 0;

	if (vnic->filter_id != -1) {
		FUNC4(softc->dev,
		    "Attempt to re-allocate l2 ctx filter\n");
		return EDOOFUS;
	}

	resp = (void *)softc->hwrm_cmd_resp.idi_vaddr;
	FUNC3(softc, &req, HWRM_CFA_L2_FILTER_ALLOC);

	req.flags = FUNC6(HWRM_CFA_L2_FILTER_ALLOC_INPUT_FLAGS_PATH_RX);
	enables = HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR
	    | HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR_MASK
	    | HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_DST_ID;
	req.enables = FUNC6(enables);
	req.dst_id = FUNC5(vnic->id);
	FUNC10(req.l2_addr, FUNC7(FUNC8(softc->ctx)),
	    ETHER_ADDR_LEN);
	FUNC11(&req.l2_addr_mask, 0xff, sizeof(req.l2_addr_mask));

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	vnic->filter_id = FUNC9(resp->l2_filter_id);
	vnic->flow_id = FUNC9(resp->flow_id);

fail:
	FUNC1(softc);
	return (rc);
}