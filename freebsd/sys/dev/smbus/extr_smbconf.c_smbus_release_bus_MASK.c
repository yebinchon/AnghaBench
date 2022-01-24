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
 int EACCES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SMB_RELEASE_BUS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct smbus_softc* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smbus_softc*) ; 

int
FUNC6(device_t bus, device_t dev)
{
	struct smbus_softc *sc = FUNC2(bus);
	int error;

	/* first, ask the underlying layers if the release is ok */
	error = FUNC0(FUNC1(bus), SMB_RELEASE_BUS, NULL);

	if (error)
		return (error);

	FUNC3(&sc->lock);
	if (sc->owner == dev) {
		sc->owner = NULL;

		/* wakeup waiting processes */
		FUNC5(sc);
	} else
		error = EACCES;
	FUNC4(&sc->lock);

	return (error);
}