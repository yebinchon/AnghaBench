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
struct ds1775_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct ds1775_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	const char  *name, *compatible;
	struct ds1775_softc *sc;

	name = FUNC4(dev);
	compatible = FUNC3(dev);

	if (!name)
		return (ENXIO);

	if (FUNC5(name, "temp-monitor") != 0 ||
	    (FUNC5(compatible, "ds1775") != 0 &&
	     FUNC5(compatible, "lm75") != 0))
		return (ENXIO);

	sc = FUNC0(dev);
	sc->sc_dev = dev;
	sc->sc_addr = FUNC2(dev);

	FUNC1(dev, "Temp-Monitor DS1775");

	return (0);
}