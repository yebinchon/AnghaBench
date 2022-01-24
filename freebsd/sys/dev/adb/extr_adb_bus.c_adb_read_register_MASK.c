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
struct adb_softc {int /*<<< orphan*/  sc_dev; } ;
struct adb_devinfo {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADB_COMMAND_TALK ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 struct adb_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adb_softc* FUNC3 (int /*<<< orphan*/ ) ; 

size_t 
FUNC4(device_t dev, u_char reg, void *data) 
{
	struct adb_softc *sc;
	struct adb_devinfo *dinfo;
	size_t result;

	dinfo = FUNC1(dev);
	sc = FUNC3(FUNC2(dev));

	result = FUNC0(sc->sc_dev,dinfo->address,
	           ADB_COMMAND_TALK, reg, 0, NULL, data);

	return (result);
}