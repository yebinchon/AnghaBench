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
struct hwrm_wol_filter_free_input {int /*<<< orphan*/  wol_filter_id; int /*<<< orphan*/  enables; int /*<<< orphan*/  port_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_id; } ;
struct bnxt_softc {int /*<<< orphan*/  wol_filter_id; TYPE_1__ pf; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_WOL_FILTER_FREE ; 
 int /*<<< orphan*/  HWRM_WOL_FILTER_FREE_INPUT_ENABLES_WOL_FILTER_ID ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_wol_filter_free_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_wol_filter_free_input*,int) ; 

int
FUNC4(struct bnxt_softc *softc)
{
	struct hwrm_wol_filter_free_input req = {0};

	FUNC0(softc, &req, HWRM_WOL_FILTER_FREE);
	req.port_id = FUNC1(softc->pf.port_id);
	req.enables =
		FUNC2(HWRM_WOL_FILTER_FREE_INPUT_ENABLES_WOL_FILTER_ID);
	req.wol_filter_id = softc->wol_filter_id;
	return FUNC3(softc, &req, sizeof(req));
}