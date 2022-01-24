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
typedef  scalar_t__ uint32_t ;
struct iwm_softc {int dummy; } ;
struct iwm_host_cmd {int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ IWM_CAN_ABORT_STATUS ; 
 int /*<<< orphan*/  IWM_CMD_SYNC ; 
 int /*<<< orphan*/  IWM_DEBUG_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  IWM_SCAN_OFFLOAD_ABORT_CMD ; 
 int FUNC1 (struct iwm_softc*,struct iwm_host_cmd*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct iwm_softc *sc)
{
	int ret;
	struct iwm_host_cmd hcmd = {
		.id = IWM_SCAN_OFFLOAD_ABORT_CMD,
		.len = 0, 
		.data = NULL, 
		.flags = IWM_CMD_SYNC,
	};
	uint32_t status;

	ret = FUNC1(sc, &hcmd, &status);
	if (ret)
		return ret;

	if (status != IWM_CAN_ABORT_STATUS) {
		/*
		 * The scan abort will return 1 for success or
		 * 2 for "failure".  A failure condition can be
		 * due to simply not being in an active scan which
		 * can occur if we send the scan abort before the
		 * microcode has notified us that a scan is completed.
		 */
		FUNC0(sc, IWM_DEBUG_SCAN,
		    "SCAN OFFLOAD ABORT ret %d.\n", status);
		ret = ENOENT;
	}

	return ret;
}