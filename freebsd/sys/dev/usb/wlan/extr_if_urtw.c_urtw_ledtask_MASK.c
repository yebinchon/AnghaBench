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
struct urtw_softc {scalar_t__ sc_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  URTW_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 scalar_t__ URTW_SW_LED_MODE0 ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg, int pending)
{
	struct urtw_softc *sc = arg;

	if (sc->sc_strategy != URTW_SW_LED_MODE0) {
		FUNC0(sc, URTW_DEBUG_STATE,
		    "could not process a LED strategy 0x%x",
		    sc->sc_strategy);
		return;
	}

	FUNC1(sc);
	FUNC3(sc);
	FUNC2(sc);
}