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
struct beri_mem_softc {TYPE_1__* mem_cdev; int /*<<< orphan*/ * res; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  mem_size; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct beri_mem_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  beri_mem_spec ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct beri_mem_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  mem_cdevsw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct beri_mem_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;

	if (FUNC0(dev, beri_mem_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory info */
	sc->mem_size = FUNC4(sc->res[0]);
	sc->mem_start = FUNC5(sc->res[0]);

	sc->mem_cdev = FUNC3(&mem_cdevsw, 0, UID_ROOT, GID_WHEEL,
	    0600, "beri_mem");

	if (sc->mem_cdev == NULL) {
		FUNC2(dev, "Failed to create character device.\n");
		return (ENXIO);
	}

	sc->mem_cdev->si_drv1 = sc;

	return (0);
}