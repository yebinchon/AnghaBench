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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pmbase ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ ICHSS_BM_OFFSET ; 
 scalar_t__ ICHSS_CTRL_OFFSET ; 
 int ICHSS_IO_REG ; 
 int ICHSS_PMBASE_MASK ; 
 int /*<<< orphan*/  ICHSS_PMBASE_OFFSET ; 
 scalar_t__ PCI_DEV_82801BA ; 
 scalar_t__ PCI_DEV_82801CA ; 
 scalar_t__ PCI_DEV_82801DB ; 
 scalar_t__ PCI_DEV_82815_MC ; 
 scalar_t__ PCI_VENDOR_INTEL ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * ich_device ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(driver_t *driver, device_t parent)
{
	device_t child;
	uint32_t pmbase;

	if (FUNC12("ichss", 0))
		return;

	/*
	 * It appears that ICH SpeedStep only requires a single CPU to
	 * set the value (since the chipset is shared by all CPUs.)
	 * Thus, we only add a child to cpu 0.
	 */
	if (FUNC4(parent) != 0)
		return;

	/* Avoid duplicates. */
	if (FUNC3(parent, "ichss", -1))
		return;

	/*
	 * ICH2/3/4-M I/O Controller Hub is at bus 0, slot 1F, function 0.
	 * E.g. see Section 6.1 "PCI Devices and Functions" and table 6.1 of
	 * Intel(r) 82801BA I/O Controller Hub 2 (ICH2) and Intel(r) 82801BAM
	 * I/O Controller Hub 2 Mobile (ICH2-M).
	 */
	ich_device = FUNC6(0, 0x1f, 0);
	if (ich_device == NULL ||
	    FUNC9(ich_device) != PCI_VENDOR_INTEL ||
	    (FUNC7(ich_device) != PCI_DEV_82801BA &&
	    FUNC7(ich_device) != PCI_DEV_82801CA &&
	    FUNC7(ich_device) != PCI_DEV_82801DB))
		return;

	/*
	 * Certain systems with ICH2 and an Intel 82815_MC host bridge
	 * where the host bridge's revision is < 5 lockup if SpeedStep
	 * is used.
	 */
	if (FUNC7(ich_device) == PCI_DEV_82801BA) {
		device_t hostb;

		hostb = FUNC6(0, 0, 0);
		if (hostb != NULL &&
		    FUNC9(hostb) == PCI_VENDOR_INTEL &&
		    FUNC7(hostb) == PCI_DEV_82815_MC &&
		    FUNC8(hostb) < 5)
			return;
	}

	/* Find the PMBASE register from our PCI config header. */
	pmbase = FUNC10(ich_device, ICHSS_PMBASE_OFFSET,
	    sizeof(pmbase));
	if ((pmbase & ICHSS_IO_REG) == 0) {
		FUNC11("ichss: invalid PMBASE memory type\n");
		return;
	}
	pmbase &= ICHSS_PMBASE_MASK;
	if (pmbase == 0) {
		FUNC11("ichss: invalid zero PMBASE address\n");
		return;
	}
	FUNC1("ichss: PMBASE is %#x\n", pmbase);

	child = FUNC0(parent, 20, "ichss", 0);
	if (child == NULL) {
		FUNC5(parent, "add SpeedStep child failed\n");
		return;
	}

	/* Add the bus master arbitration and control registers. */
	FUNC2(child, SYS_RES_IOPORT, 0, pmbase + ICHSS_BM_OFFSET,
	    1);
	FUNC2(child, SYS_RES_IOPORT, 1, pmbase + ICHSS_CTRL_OFFSET,
	    1);
}