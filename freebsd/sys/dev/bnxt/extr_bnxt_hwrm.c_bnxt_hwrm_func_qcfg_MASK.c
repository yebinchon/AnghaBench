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
struct hwrm_func_qcfg_output {int /*<<< orphan*/  alloc_vnics; int /*<<< orphan*/  alloc_rx_rings; int /*<<< orphan*/  alloc_tx_rings; int /*<<< orphan*/  alloc_cmpl_rings; } ;
struct hwrm_func_qcfg_input {int /*<<< orphan*/  fid; int /*<<< orphan*/  member_0; } ;
struct bnxt_func_qcfg {void* alloc_vnics; void* alloc_rx_rings; void* alloc_tx_rings; void* alloc_completion_rings; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {struct bnxt_func_qcfg fn_qcfg; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  HWRM_FUNC_QCFG ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_func_qcfg_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_func_qcfg_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

int 
FUNC6(struct bnxt_softc *softc)
{
        struct hwrm_func_qcfg_input req = {0};
        struct hwrm_func_qcfg_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	struct bnxt_func_qcfg *fn_qcfg = &softc->fn_qcfg;
        int rc;

	FUNC3(softc, &req, HWRM_FUNC_QCFG);
        req.fid = FUNC4(0xffff);
	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
        if (rc)
		goto fail;

	fn_qcfg->alloc_completion_rings = FUNC5(resp->alloc_cmpl_rings);
	fn_qcfg->alloc_tx_rings = FUNC5(resp->alloc_tx_rings);
	fn_qcfg->alloc_rx_rings = FUNC5(resp->alloc_rx_rings);
	fn_qcfg->alloc_vnics = FUNC5(resp->alloc_vnics);
fail:
	FUNC1(softc);
        return rc;
}