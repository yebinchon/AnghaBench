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
struct iicbus_softc {void* owner; void* busydev; scalar_t__ owncount; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ DS_ATTACHING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iicbus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iicbus_softc*) ; 
 int IIC_RECURSIVE ; 
 int /*<<< orphan*/  IIC_REQUEST_BUS ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (struct iicbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct iicbus_softc*) ; 

int
FUNC10(device_t bus, device_t dev, int how)
{
	struct iicbus_softc *sc = (struct iicbus_softc *)FUNC5(bus);
	int error = 0;

	FUNC1(sc);

	for (;;) {
		if (sc->owner == NULL)
			break;
		if ((how & IIC_RECURSIVE) && sc->owner == dev)
			break;
		if ((error = FUNC8(sc, how)) != 0)
			break;
	}

	if (error == 0) {
		++sc->owncount;
		if (sc->owner == NULL) {
			sc->owner = dev;
			/*
			 * Mark the device busy while it owns the bus, to
			 * prevent detaching the device, bus, or hardware
			 * controller, until ownership is relinquished.  If the
			 * device is doing IO from its probe method before
			 * attaching, it cannot be busied; mark the bus busy.
			 */
			if (FUNC6(dev) < DS_ATTACHING)
				sc->busydev = bus;
			else
				sc->busydev = dev;
			FUNC3(sc->busydev);
			/* 
			 * Drop the lock around the call to the bus driver, it
			 * should be allowed to sleep in the IIC_WAIT case.
			 * Drivers might also need to grab locks that would
			 * cause a LOR if our lock is held.
			 */
			FUNC2(sc);
			/* Ask the underlying layers if the request is ok */
			error = FUNC0(FUNC4(bus),
			    IIC_REQUEST_BUS, (caddr_t)&how);
			FUNC1(sc);
	
			if (error != 0) {
				sc->owner = NULL;
				sc->owncount = 0;
				FUNC9(sc);
				FUNC7(sc->busydev);
			}
		}
	}

	FUNC2(sc);

	return (error);
}