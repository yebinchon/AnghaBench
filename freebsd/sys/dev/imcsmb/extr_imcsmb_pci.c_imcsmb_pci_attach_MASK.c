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
struct imcsmb_pci_softc {scalar_t__ semaphore; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct imcsmb_pci_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * imcsmb_regs ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct imcsmb_pci_softc *sc;
	device_t child;
	int rc;
	int unit;

	/* Initialize private state */
	sc = FUNC2(dev);
	sc->dev = dev;
	sc->semaphore = 0;

	/* Create the imcsmbX children */
	for (unit = 0; unit < 2; unit++) {
		child = FUNC1(dev, "imcsmb", -1);
		if (child == NULL) {
			/* Nothing has been allocated, so there's no cleanup. */
			FUNC3(dev, "Child imcsmb not added\n");
			rc = ENXIO;
			goto out;
		}
		/* Set the child's ivars to point to the appropriate set of
		 * the PCI device's registers.
		 */
		FUNC4(child, &imcsmb_regs[unit]);
	}

	/* Attach the imcsmbX children. */
	if ((rc = FUNC0(dev)) != 0) {
		FUNC3(dev, "failed to attach children: %d\n", rc);
		goto out;
	}

out:
	return (rc);
}