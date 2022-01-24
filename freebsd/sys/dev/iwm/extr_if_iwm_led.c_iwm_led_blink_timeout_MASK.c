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
struct iwm_softc {scalar_t__ sc_attached; int /*<<< orphan*/  sc_led_blink_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct iwm_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 scalar_t__ FUNC3 (struct iwm_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct iwm_softc *sc = arg;

	if (sc->sc_attached == 0)
		return;

	if (FUNC3(sc))
		FUNC1(sc);
	else
		FUNC2(sc);

	FUNC0(&sc->sc_led_blink_to, (200 * hz) / 1000,
	    iwm_led_blink_timeout, sc);
}