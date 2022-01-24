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
struct vtmmio_softc {int /*<<< orphan*/ * vtmmio_child_dev; int /*<<< orphan*/ * res; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_ACK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct vtmmio_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vtmmio_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtmmio_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev)
{
	struct vtmmio_softc *sc;
	device_t child;
	int rid;

	sc = FUNC2(dev);
	sc->dev = dev;

	rid = 0;
	sc->res[0] = FUNC0(dev, SYS_RES_MEMORY, &rid,
			RF_ACTIVE);
	if (!sc->res[0]) {
		FUNC3(dev, "Cannot allocate memory window.\n");
		return (ENXIO);
	}

	FUNC6(sc);

	/* Tell the host we've noticed this device. */
	FUNC7(dev, VIRTIO_CONFIG_STATUS_ACK);

	if ((child = FUNC1(dev, NULL, -1)) == NULL) {
		FUNC3(dev, "Cannot create child device.\n");
		FUNC7(dev, VIRTIO_CONFIG_STATUS_FAILED);
		FUNC4(dev);
		return (ENOMEM);
	}

	sc->vtmmio_child_dev = child;
	FUNC5(sc);

	return (0);
}