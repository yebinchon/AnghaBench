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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct adb_softc {int autopoll_mask; int /*<<< orphan*/  parent; } ;
struct adb_devinfo {int address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct adb_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adb_softc* FUNC3 (int /*<<< orphan*/ ) ; 

u_int
FUNC4(device_t dev, u_char enable) 
{
	struct adb_devinfo *dinfo;
	struct adb_softc *sc;
	uint16_t mod = 0;

	sc = FUNC3(FUNC2(dev));
	dinfo = FUNC1(dev);
	
	mod = enable << dinfo->address;
	if (enable) {
		sc->autopoll_mask |= mod;
	} else {
		mod = ~mod;
		sc->autopoll_mask &= mod;
	}

	FUNC0(sc->parent,sc->autopoll_mask);

	return (0);
}