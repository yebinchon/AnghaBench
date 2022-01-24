#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int tx_boundary; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw_name; } ;
typedef  TYPE_1__ mxge_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int E2BIG ; 
 int ENOSYS ; 
 int /*<<< orphan*/  MXGEFW_CMD_UNALIGNED_TEST ; 
 scalar_t__ MXGE_PCI_REV_Z8ES ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  mxge_fw_aligned ; 
 int FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(mxge_softc_t *sc)
{
	device_t dev = sc->dev;
	int reg, status;
	uint16_t pectl;

	sc->tx_boundary = 4096;
	/*
	 * Verify the max read request size was set to 4KB
	 * before trying the test with 4KB.
	 */
	if (FUNC4(dev, PCIY_EXPRESS, &reg) == 0) {
		pectl = FUNC6(dev, reg + 0x8, 2);
		if ((pectl & (5 << 12)) != (5 << 12)) {
			FUNC0(dev, "Max Read Req. size != 4k (0x%x\n",
				      pectl);
			sc->tx_boundary = 2048;
		}
	}

	/*
	 * load the optimized firmware (which assumes aligned PCIe
	 * completions) in order to see if it works on this host.
	 */
	sc->fw_name = mxge_fw_aligned;
	status = FUNC3(sc, 1);
	if (status != 0) {
		return status;
	}

	/*
	 * Enable ECRC if possible
	 */
	FUNC2(sc);

	/*
	 * Run a DMA test which watches for unaligned completions and
	 * aborts on the first one seen.  Not required on Z8ES or newer.
	 */
	if (FUNC5(sc->dev) >= MXGE_PCI_REV_Z8ES)
		return 0;
	status = FUNC1(sc, MXGEFW_CMD_UNALIGNED_TEST);
	if (status == 0)
		return 0; /* keep the aligned firmware */

	if (status != E2BIG)
		FUNC0(dev, "DMA test failed: %d\n", status);
	if (status == ENOSYS)
		FUNC0(dev, "Falling back to ethp! "
			      "Please install up to date fw\n");
	return status;
}