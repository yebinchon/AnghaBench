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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
#ifdef __HAVE_PIR
	device_t pir;
#endif
	int bus;

	bus = FUNC6(dev);
#ifdef __HAVE_PIR
	/*
	 * Look for a PCI BIOS interrupt routing table as that will be
	 * our method of routing interrupts if we have one.
	 */
	if (pci_pir_probe(bus, 0)) {
		pir = BUS_ADD_CHILD(device_get_parent(dev), 0, "pir", 0);
		if (pir != NULL)
			device_probe_and_attach(pir);
	}
#endif
	FUNC2(dev, "pci", -1);
	return FUNC1(dev);
}