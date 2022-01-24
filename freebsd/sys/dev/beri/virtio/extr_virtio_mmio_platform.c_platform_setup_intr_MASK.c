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
struct virtio_mmio_platform_softc {int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  pio_recv; scalar_t__ use_pio; void* ih_user; void* intr_handler; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_mmio_platform_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct virtio_mmio_platform_softc*,int /*<<< orphan*/ *) ; 
 struct virtio_mmio_platform_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  platform_intr ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t mmio_dev,
			void *intr_handler, void *ih_user)
{
	struct virtio_mmio_platform_softc *sc;
	int rid;

	sc = FUNC3(dev);

	sc->intr_handler = intr_handler;
	sc->ih_user = ih_user;

	if (sc->use_pio) {
		FUNC0(sc->pio_recv, platform_intr, sc);
		return (0);
	}

	rid = 0;
	sc->res[0] = FUNC1(dev, SYS_RES_IRQ, &rid,
		RF_ACTIVE);
	if (!sc->res[0]) {
		FUNC4(dev, "Can't allocate interrupt\n");
		return (ENXIO);
	}

	if (FUNC2(dev, sc->res[0], INTR_TYPE_MISC | INTR_MPSAFE,
		NULL, platform_intr, sc, &sc->ih)) {
		FUNC4(dev, "Can't setup the interrupt\n");
		return (ENXIO);
	}

	return (0);
}