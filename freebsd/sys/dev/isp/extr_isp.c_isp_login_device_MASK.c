#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_5__ {scalar_t__ portid; int handle; } ;
typedef  TYPE_1__ isp_pdb_t ;
struct TYPE_6__ {scalar_t__ isp_loopstate; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 scalar_t__ LOOP_SCANNING_FABRIC ; 
 int MBOX_LOOP_ID_USED ; 
 int MBOX_PORT_ID_USED ; 
 int NPH_MAX ; 
 int NPH_MAX_2K ; 
 int PLOGX_FLG_CMD_LOGO ; 
 int PLOGX_FLG_CMD_PLOGI ; 
 int PLOGX_FLG_FREE_NPHDL ; 
 int PLOGX_FLG_IMPLICIT ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC6(ispsoftc_t *isp, int chan, uint32_t portid, isp_pdb_t *p, uint16_t *ohp)
{
	int lim, i, r;
	uint16_t handle;

	if (FUNC1(isp)) {
		lim = NPH_MAX_2K;
	} else {
		lim = NPH_MAX;
	}

	handle = FUNC3(isp, ohp);
	for (i = 0; i < lim; i++) {
		if (FUNC0(isp, chan)->isp_loopstate != LOOP_SCANNING_FABRIC)
			return (-1);

		/* Check if this handle is free. */
		r = FUNC2(isp, chan, handle, p);
		if (r == 0) {
			if (p->portid != portid) {
				/* This handle is busy, try next one. */
				handle = FUNC3(isp, ohp);
				continue;
			}
			break;
		}
		if (FUNC0(isp, chan)->isp_loopstate != LOOP_SCANNING_FABRIC)
			return (-1);

		/*
		 * Now try and log into the device
		 */
		r = FUNC4(isp, chan, handle, portid, PLOGX_FLG_CMD_PLOGI);
		if (r == 0) {
			break;
		} else if ((r & 0xffff) == MBOX_PORT_ID_USED) {
			/*
			 * If we get here, then the firmwware still thinks we're logged into this device, but with a different
			 * handle. We need to break that association. We used to try and just substitute the handle, but then
			 * failed to get any data via isp_getpdb (below).
			 */
			if (FUNC4(isp, chan, r >> 16, portid, PLOGX_FLG_CMD_LOGO | PLOGX_FLG_IMPLICIT | PLOGX_FLG_FREE_NPHDL)) {
				FUNC5(isp, ISP_LOGERR, "baw... logout of %x failed", r >> 16);
			}
			if (FUNC0(isp, chan)->isp_loopstate != LOOP_SCANNING_FABRIC)
				return (-1);
			r = FUNC4(isp, chan, handle, portid, PLOGX_FLG_CMD_PLOGI);
			if (r != 0)
				i = lim;
			break;
		} else if ((r & 0xffff) == MBOX_LOOP_ID_USED) {
			/* Try the next handle. */
			handle = FUNC3(isp, ohp);
		} else {
			/* Give up. */
			i = lim;
			break;
		}
	}

	if (i == lim) {
		FUNC5(isp, ISP_LOGWARN, "Chan %d PLOGI 0x%06x failed", chan, portid);
		return (-1);
	}

	/*
	 * If we successfully logged into it, get the PDB for it
	 * so we can crosscheck that it is still what we think it
	 * is and that we also have the role it plays
	 */
	r = FUNC2(isp, chan, handle, p);
	if (r != 0) {
		FUNC5(isp, ISP_LOGERR, "Chan %d new device 0x%06x@0x%x disappeared", chan, portid, handle);
		return (-1);
	}

	if (p->handle != handle || p->portid != portid) {
		FUNC5(isp, ISP_LOGERR, "Chan %d new device 0x%06x@0x%x changed (0x%06x@0x%0x)",
		    chan, portid, handle, p->portid, p->handle);
		return (-1);
	}
	return (0);
}