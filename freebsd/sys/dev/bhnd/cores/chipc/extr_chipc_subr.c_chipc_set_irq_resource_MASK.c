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
typedef  int /*<<< orphan*/  u_int ;
struct chipc_softc {scalar_t__ dev; } ;
struct chipc_devinfo {int irq_mapped; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct chipc_devinfo* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 

int
FUNC7(struct chipc_softc *sc, device_t child, int rid,
    u_int intr)
{
	struct chipc_devinfo	*dinfo;
	int			 error;

	FUNC0(FUNC5(child) == sc->dev, ("not a direct child"));
	dinfo = FUNC4(child);

	/* We currently only support a single IRQ mapping */
	if (dinfo->irq_mapped) {
		FUNC6(sc->dev, "irq already mapped for child\n");
		return (ENOMEM);
	}

	/* Map the IRQ */
	if ((error = FUNC1(sc->dev, intr, &dinfo->irq))) {
		FUNC6(sc->dev, "failed to map intr %u: %d\n", intr,
		    error);
		return (error);
	}

	dinfo->irq_mapped = true;

	/* Add to child's resource list */
	error = FUNC3(child, SYS_RES_IRQ, rid, dinfo->irq, 1);
	if (error) {
		FUNC6(sc->dev, "failed to set child irq resource %d to "
		    "%ju: %d\n", rid, dinfo->irq, error);

		FUNC2(sc->dev, dinfo->irq);
		return (error);
	}

	return (0);
}