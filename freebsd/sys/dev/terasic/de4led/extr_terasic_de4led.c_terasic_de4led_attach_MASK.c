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
struct terasic_de4led_softc {int /*<<< orphan*/  tdl_unit; int /*<<< orphan*/  tdl_dev; void** tdl_leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_0 ; 
 int /*<<< orphan*/  led_1 ; 
 int /*<<< orphan*/  led_2 ; 
 int /*<<< orphan*/  led_3 ; 
 int /*<<< orphan*/  led_4 ; 
 int /*<<< orphan*/  led_5 ; 
 int /*<<< orphan*/  led_6 ; 
 int /*<<< orphan*/  led_7 ; 
 void* FUNC5 (int /*<<< orphan*/ ,struct terasic_de4led_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct terasic_de4led_softc*) ; 

void
FUNC9(struct terasic_de4led_softc *sc)
{
	const char *cmd;

	FUNC2(sc);

	/*
	 * Clear the LED array before we start.
	 */
	FUNC1(sc);
	FUNC0(sc);
	FUNC8(sc);
	FUNC3(sc);

	/*
	 * Register the LED array with led(4).
	 */
	sc->tdl_leds[0] = FUNC5(led_0, sc, "de4led_0");
	sc->tdl_leds[1] = FUNC5(led_1, sc, "de4led_1");
	sc->tdl_leds[2] = FUNC5(led_2, sc, "de4led_2");
	sc->tdl_leds[3] = FUNC5(led_3, sc, "de4led_3");
	sc->tdl_leds[4] = FUNC5(led_4, sc, "de4led_4");
	sc->tdl_leds[5] = FUNC5(led_5, sc, "de4led_5");
	sc->tdl_leds[6] = FUNC5(led_6, sc, "de4led_6");
	sc->tdl_leds[7] = FUNC5(led_7, sc, "de4led_7");

	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_0_cmd", &cmd) == 0)
		FUNC6("de4led_0", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_1_cmd", &cmd) == 0)
		FUNC6("de4led_1", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_2_cmd", &cmd) == 0)
		FUNC6("de4led_2", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_3_cmd", &cmd) == 0)
		FUNC6("de4led_3", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_4_cmd", &cmd) == 0)
		FUNC6("de4led_4", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_5_cmd", &cmd) == 0)
		FUNC6("de4led_5", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_6_cmd", &cmd) == 0)
		FUNC6("de4led_6", cmd);
	if (FUNC7(FUNC4(sc->tdl_dev),
	    sc->tdl_unit, "de4led_7_cmd", &cmd) == 0)
		FUNC6("de4led_7", cmd);
}