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
struct lm75_softc {int /*<<< orphan*/  sc_hwtype; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  HWTYPE_LM75 ; 
 struct lm75_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct lm75_softc *sc;

	sc = FUNC0(dev);
	sc->sc_hwtype = HWTYPE_LM75;
#ifdef FDT
	if (!ofw_bus_is_compatible(dev, "national,lm75"))
		return (ENXIO);
#endif
	FUNC1(dev, "LM75 temperature sensor");

	return (BUS_PROBE_GENERIC);
}