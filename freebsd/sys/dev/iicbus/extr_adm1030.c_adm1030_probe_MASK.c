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
typedef  int /*<<< orphan*/  thermostat ;
struct adm1030_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 struct adm1030_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	const char     *name, *compatible;
	struct adm1030_softc *sc;
	phandle_t	handle;
	phandle_t	thermostat;

	name = FUNC5(dev);
	compatible = FUNC4(dev);
	handle = FUNC6(dev);

	if (!name)
		return (ENXIO);

	if (FUNC7(name, "fan") != 0 || FUNC7(compatible, "adm1030") != 0)
		return (ENXIO);

	/* This driver can only be used if there's an associated temp sensor. */
	if (FUNC0(handle, "platform-getTemp", &thermostat, sizeof(thermostat)) < 0)
		return (ENXIO);

	sc = FUNC1(dev);
	sc->sc_dev = dev;
	sc->sc_addr = FUNC3(dev);

	FUNC2(dev, "G4 MDD Fan driver");

	return (0);
}