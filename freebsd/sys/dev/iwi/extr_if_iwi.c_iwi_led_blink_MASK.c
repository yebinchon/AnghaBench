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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwi_softc {int sc_blinking; int sc_ledoff; int /*<<< orphan*/  sc_ledtimer; int /*<<< orphan*/  sc_ledpin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iwi_softc*) ; 
 int /*<<< orphan*/  iwi_led_off ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct iwi_softc *sc, int on, int off)
{
	uint32_t v;

	v = FUNC1(sc);
	v |= sc->sc_ledpin;
	FUNC3(sc, FUNC2(v));
	sc->sc_blinking = 1;
	sc->sc_ledoff = off;
	FUNC0(&sc->sc_ledtimer, on, iwi_led_off, sc);
}