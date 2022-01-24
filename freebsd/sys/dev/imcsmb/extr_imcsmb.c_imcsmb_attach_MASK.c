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
struct imcsmb_softc {int /*<<< orphan*/ * smbus; int /*<<< orphan*/  regs; int /*<<< orphan*/  imcsmb_pci; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct imcsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct imcsmb_softc *sc;
	int rc;

	/* Initialize private state */
	sc = FUNC4(dev);
	sc->dev = dev;
	sc->imcsmb_pci = FUNC3(dev);
	sc->regs = FUNC2(dev);

	/* Create the smbus child */
	sc->smbus = FUNC1(dev, "smbus", -1);
	if (sc->smbus == NULL) {
		/* Nothing has been allocated, so there's no cleanup. */
		FUNC5(dev, "Child smbus not added\n");
		rc = ENXIO;
		goto out;
	}

	/* Attach the smbus child. */
	if ((rc = FUNC0(dev)) != 0) {
		FUNC5(dev, "Failed to attach smbus: %d\n", rc);
	}

out:
	return (rc);
}