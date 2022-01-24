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
struct epic_softc {void* sc_led_dev_power; void* sc_led_dev_alert; int /*<<< orphan*/  sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct epic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPIC_FW_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct epic_softc*) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct epic_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  epic_led_alert ; 
 int /*<<< orphan*/  epic_led_power ; 
 int /*<<< orphan*/  epic_res_spec ; 
 void* FUNC6 (int /*<<< orphan*/ ,struct epic_softc*,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct epic_softc *sc;

	sc = FUNC4(dev);
	if (FUNC2(dev, epic_res_spec, sc->sc_res)) {
		FUNC5(dev, "failed to allocate resources\n");
		FUNC3(dev, epic_res_spec, sc->sc_res);
		return (ENXIO);
	}

	FUNC1(sc);

	if (bootverbose)
		FUNC5(dev, "version 0x%x\n",
		    FUNC0(sc, EPIC_FW_VERSION));

	sc->sc_led_dev_alert = FUNC6(epic_led_alert, sc, "alert");
	sc->sc_led_dev_power = FUNC6(epic_led_power, sc, "power");

	return (0);
}