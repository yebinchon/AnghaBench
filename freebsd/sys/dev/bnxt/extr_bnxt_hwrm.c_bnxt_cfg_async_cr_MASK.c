#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hwrm_func_vf_cfg_input {void* async_event_cr; void* enables; int /*<<< orphan*/  member_0; void* fid; } ;
struct hwrm_func_cfg_input {void* async_event_cr; void* enables; int /*<<< orphan*/  member_0; void* fid; } ;
struct TYPE_3__ {int phys_id; } ;
struct TYPE_4__ {TYPE_1__ ring; } ;
struct bnxt_softc {TYPE_2__ def_cp_ring; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  HWRM_FUNC_CFG ; 
 int /*<<< orphan*/  HWRM_FUNC_CFG_INPUT_ENABLES_ASYNC_EVENT_CR ; 
 int /*<<< orphan*/  HWRM_FUNC_VF_CFG ; 
 int /*<<< orphan*/  HWRM_FUNC_VF_CFG_INPUT_ENABLES_ASYNC_EVENT_CR ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*,struct hwrm_func_vf_cfg_input*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnxt_softc*,struct hwrm_func_vf_cfg_input*,int) ; 

int
FUNC5(struct bnxt_softc *softc)
{
	int rc = 0;
	
	if (FUNC0(softc)) {
		struct hwrm_func_cfg_input req = {0};

		FUNC1(softc, &req, HWRM_FUNC_CFG);

		req.fid = FUNC2(0xffff);
		req.enables = FUNC3(HWRM_FUNC_CFG_INPUT_ENABLES_ASYNC_EVENT_CR);
		req.async_event_cr = FUNC2(softc->def_cp_ring.ring.phys_id);

		rc = FUNC4(softc, &req, sizeof(req));
	}
	else {
		struct hwrm_func_vf_cfg_input req = {0};

		FUNC1(softc, &req, HWRM_FUNC_VF_CFG);

		req.enables = FUNC3(HWRM_FUNC_VF_CFG_INPUT_ENABLES_ASYNC_EVENT_CR);
		req.async_event_cr = FUNC2(softc->def_cp_ring.ring.phys_id);

		rc = FUNC4(softc, &req, sizeof(req));
	}
	return rc;
}