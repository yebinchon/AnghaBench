#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppi_data {int /*<<< orphan*/  ppi_device; TYPE_1__* ppi_cdev; int /*<<< orphan*/  ppi_lock; scalar_t__ intr_resource; int /*<<< orphan*/  intr_cookie; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct ppi_data* si_drv1; } ;

/* Variables and functions */
 struct ppi_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppi_cdevsw ; 
 int /*<<< orphan*/  ppiintr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ppi_data *ppi = FUNC0(dev);
#ifdef PERIPH_1284
	int error, rid = 0;

	/* declare our interrupt handler */
	ppi->intr_resource = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (ppi->intr_resource) {
		/* register our interrupt handler */
		error = bus_setup_intr(dev, ppi->intr_resource,
		    INTR_TYPE_TTY | INTR_MPSAFE, NULL, ppiintr, dev,
		    &ppi->intr_cookie);
		if (error) {
			bus_release_resource(dev, SYS_RES_IRQ, rid,
			    ppi->intr_resource);
			device_printf(dev,
			    "Unable to register interrupt handler\n");
			return (error);
		}
	}
#endif /* PERIPH_1284 */

	FUNC7(&ppi->ppi_lock, "ppi");
	ppi->ppi_cdev = FUNC6(&ppi_cdevsw, FUNC4(dev),
		 UID_ROOT, GID_WHEEL,
		 0600, "ppi%d", FUNC4(dev));
	if (ppi->ppi_cdev == NULL) {
		FUNC5(dev, "Failed to create character device\n");
		return (ENXIO);
	}
	ppi->ppi_cdev->si_drv1 = ppi;
	ppi->ppi_device = dev;

	return (0);
}