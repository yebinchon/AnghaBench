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
struct xenpci_softc {int /*<<< orphan*/ * res_irq; int /*<<< orphan*/  rid_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct xenpci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct xenpci_softc *scp = FUNC1(dev);

	scp->res_irq = FUNC0(dev, SYS_RES_IRQ,
			&scp->rid_irq, RF_SHAREABLE|RF_ACTIVE);
	if (scp->res_irq == NULL) {
		FUNC2("xenpci Could not allocate irq.\n");
		goto errexit;
	}

	return (0);

errexit:
	/* Cleanup anything we may have assigned. */
	FUNC3(dev);
	return (ENXIO); /* For want of a better idea. */
}