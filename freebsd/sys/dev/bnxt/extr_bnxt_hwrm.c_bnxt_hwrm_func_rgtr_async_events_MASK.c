#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct hwrm_func_drv_rgtr_input {int /*<<< orphan*/ * async_event_fwd; int /*<<< orphan*/  enables; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE ; 
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE ; 
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD ; 
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED ; 
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE ; 
 int /*<<< orphan*/  HWRM_FUNC_DRV_RGTR ; 
 int /*<<< orphan*/  HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct bnxt_softc *softc, unsigned long *bmap,
                                     int bmap_size)
{
	struct hwrm_func_drv_rgtr_input req = {0};
	bitstr_t *async_events_bmap;
	uint32_t *events;
	int i;

	async_events_bmap = FUNC0(256, M_DEVBUF, M_WAITOK|M_ZERO);
	events = (uint32_t *)async_events_bmap;

	FUNC3(softc, &req, HWRM_FUNC_DRV_RGTR);

	req.enables =
		FUNC5(HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD);

	FUNC7(async_events_bmap, 0, sizeof(256 / 8));

	FUNC1(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE);
	FUNC1(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD);
	FUNC1(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED);
	FUNC1(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE);
	FUNC1(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE);

	if (bmap && bmap_size) {
		for (i = 0; i < bmap_size; i++) {
			if (FUNC2(bmap, i))
				FUNC1(async_events_bmap, i);
		}
	}

	for (i = 0; i < 8; i++)
		req.async_event_fwd[i] |= FUNC5(events[i]);

	FUNC4(async_events_bmap, M_DEVBUF);

	return FUNC6(softc, &req, sizeof(req));
}