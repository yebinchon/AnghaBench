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
struct smbus_softc {scalar_t__ owner; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  SMB_RELEASE_BUS ; 
 int /*<<< orphan*/  SMB_REQUEST_BUS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct smbus_softc* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct smbus_softc*,int) ; 

int
FUNC6(device_t bus, device_t dev, int how)
{
	struct smbus_softc *sc = FUNC2(bus);
	device_t parent;
	int error;

	/* first, ask the underlying layers if the request is ok */
	parent = FUNC1(bus);
	FUNC3(&sc->lock);
	do {
		FUNC4(&sc->lock);
		error = FUNC0(parent, SMB_REQUEST_BUS, &how);
		FUNC3(&sc->lock);

		if (error)
			error = FUNC5(sc, how);
	} while (error == EWOULDBLOCK);

	while (error == 0) {
		if (sc->owner && sc->owner != dev)
			error = FUNC5(sc, how);
		else {
			sc->owner = dev;
			break;
		}

		/* free any allocated resource */
		if (error) {
			FUNC4(&sc->lock);
			FUNC0(parent, SMB_RELEASE_BUS, &how);
			return (error);
		}
	}
	FUNC4(&sc->lock);

	return (error);
}