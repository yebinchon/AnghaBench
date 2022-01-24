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
struct iicbus_softc {scalar_t__ owner; scalar_t__ owncount; int /*<<< orphan*/  busydev; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iicbus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iicbus_softc*) ; 
 int IIC_EBUSBSY ; 
 int /*<<< orphan*/  IIC_RELEASE_BUS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iicbus_softc*) ; 

int
FUNC7(device_t bus, device_t dev)
{
	struct iicbus_softc *sc = (struct iicbus_softc *)FUNC4(bus);

	FUNC1(sc);

	if (sc->owner != dev) {
		FUNC2(sc);
		return (IIC_EBUSBSY);
	}

	if (--sc->owncount == 0) {
		/* Drop the lock while informing the low-level driver. */
		FUNC2(sc);
		FUNC0(FUNC3(bus), IIC_RELEASE_BUS, NULL);
		FUNC1(sc);
		sc->owner = NULL;
		FUNC6(sc);
		FUNC5(sc->busydev);
	}
	FUNC2(sc);
	return (0);
}