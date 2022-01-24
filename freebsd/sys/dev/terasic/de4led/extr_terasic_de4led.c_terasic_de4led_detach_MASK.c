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
struct terasic_de4led_softc {int /*<<< orphan*/ ** tdl_leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct terasic_de4led_softc*) ; 

void
FUNC6(struct terasic_de4led_softc *sc)
{
	int i;

	for (i = 0; i < 8; i++) {
		FUNC4(sc->tdl_leds[i]);
		sc->tdl_leds[i] = NULL;
	}
	FUNC1(sc);
	FUNC0(sc);
	FUNC5(sc);
	FUNC3(sc);
	FUNC2(sc);
}