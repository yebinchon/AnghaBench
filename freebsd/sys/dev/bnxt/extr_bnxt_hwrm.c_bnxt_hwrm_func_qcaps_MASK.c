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
struct hwrm_func_qcaps_output {int flags; int /*<<< orphan*/  max_rx_wm_flows; int /*<<< orphan*/  max_rx_em_flows; int /*<<< orphan*/  max_tx_wm_flows; int /*<<< orphan*/  max_tx_em_flows; int /*<<< orphan*/  max_decap_records; int /*<<< orphan*/  max_encap_records; int /*<<< orphan*/  max_vfs; int /*<<< orphan*/  first_vf_id; int /*<<< orphan*/  port_id; int /*<<< orphan*/  max_stat_ctx; int /*<<< orphan*/  max_vnics; int /*<<< orphan*/  max_l2_ctxs; int /*<<< orphan*/  max_hw_ring_grps; int /*<<< orphan*/  max_rx_rings; int /*<<< orphan*/  max_tx_rings; int /*<<< orphan*/  max_cmpl_rings; int /*<<< orphan*/  max_rsscos_ctx; int /*<<< orphan*/  mac_address; int /*<<< orphan*/  fid; } ;
struct hwrm_func_qcaps_input {int /*<<< orphan*/  fid; int /*<<< orphan*/  member_0; } ;
struct bnxt_pf_info {void* max_rx_wm_flows; void* max_rx_em_flows; void* max_tx_wm_flows; void* max_tx_em_flows; void* max_decap_records; void* max_encap_records; void* max_vfs; void* first_vf_id; void* port_id; } ;
struct bnxt_func_info {int /*<<< orphan*/  mac_addr; void* max_stat_ctxs; void* max_vnics; void* max_l2_ctxs; void* max_tx_rings; void* max_hw_ring_grps; void* max_rx_rings; void* max_cp_rings; void* max_rsscos_ctxs; void* fw_fid; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; struct bnxt_pf_info pf; int /*<<< orphan*/  flags; struct bnxt_func_info func; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FLAG_WOL_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 scalar_t__ FUNC2 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  HWRM_FUNC_QCAPS ; 
 int /*<<< orphan*/  HWRM_FUNC_QCAPS_OUTPUT_FLAGS_WOL_MAGICPKT_SUPPORTED ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_func_qcaps_input*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_softc*,struct hwrm_func_qcaps_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13(struct bnxt_softc *softc)
{
	int rc = 0;
	struct hwrm_func_qcaps_input req = {0};
	struct hwrm_func_qcaps_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	struct bnxt_func_info *func = &softc->func;

	FUNC5(softc, &req, HWRM_FUNC_QCAPS);
	req.fid = FUNC8(0xffff);

	FUNC0(softc);
	rc = FUNC3(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	if (resp->flags &
	    FUNC9(HWRM_FUNC_QCAPS_OUTPUT_FLAGS_WOL_MAGICPKT_SUPPORTED))
		softc->flags |= BNXT_FLAG_WOL_CAP;

	func->fw_fid = FUNC10(resp->fid);
	FUNC12(func->mac_addr, resp->mac_address, ETHER_ADDR_LEN);
	func->max_rsscos_ctxs = FUNC10(resp->max_rsscos_ctx);
	func->max_cp_rings = FUNC10(resp->max_cmpl_rings);
	func->max_tx_rings = FUNC10(resp->max_tx_rings);
	func->max_rx_rings = FUNC10(resp->max_rx_rings);
	func->max_hw_ring_grps = FUNC11(resp->max_hw_ring_grps);
	if (!func->max_hw_ring_grps)
		func->max_hw_ring_grps = func->max_tx_rings;
	func->max_l2_ctxs = FUNC10(resp->max_l2_ctxs);
	func->max_vnics = FUNC10(resp->max_vnics);
	func->max_stat_ctxs = FUNC10(resp->max_stat_ctx);
	if (FUNC2(softc)) {
		struct bnxt_pf_info *pf = &softc->pf;

		pf->port_id = FUNC10(resp->port_id);
		pf->first_vf_id = FUNC10(resp->first_vf_id);
		pf->max_vfs = FUNC10(resp->max_vfs);
		pf->max_encap_records = FUNC11(resp->max_encap_records);
		pf->max_decap_records = FUNC11(resp->max_decap_records);
		pf->max_tx_em_flows = FUNC11(resp->max_tx_em_flows);
		pf->max_tx_wm_flows = FUNC11(resp->max_tx_wm_flows);
		pf->max_rx_em_flows = FUNC11(resp->max_rx_em_flows);
		pf->max_rx_wm_flows = FUNC11(resp->max_rx_wm_flows);
	}
	if (!FUNC4(func->mac_addr)) {
		FUNC6(softc->dev, "Invalid ethernet address, generating random locally administered address\n");
		FUNC7(func->mac_addr);
	}

fail:
	FUNC1(softc);
	return rc;
}