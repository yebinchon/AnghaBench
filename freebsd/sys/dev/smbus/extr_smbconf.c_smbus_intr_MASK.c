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
typedef  int /*<<< orphan*/  u_char ;
struct smbus_softc {int /*<<< orphan*/  lock; scalar_t__ owner; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char,char,int) ; 
 struct smbus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(device_t bus, u_char devaddr, char low, char high, int error)
{
	struct smbus_softc *sc = FUNC1(bus);

	/* call owner's intr routine */
	FUNC2(&sc->lock);
	if (sc->owner)
		FUNC0(sc->owner, devaddr, low, high, error);
	FUNC3(&sc->lock);
}