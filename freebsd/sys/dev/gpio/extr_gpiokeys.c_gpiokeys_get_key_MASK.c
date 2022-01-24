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
typedef  int /*<<< orphan*/  uint8_t ;
struct gpiokeys_softc {int sc_flags; scalar_t__ sc_inputs; int* sc_input; size_t sc_inputhead; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int GPIOKEYS_GLOBAL_FLAG_POLLING ; 
 size_t GPIOKEYS_GLOBAL_IN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gpiokeys_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdb_active ; 

__attribute__((used)) static int32_t
FUNC4(struct gpiokeys_softc *sc, uint8_t wait)
{
	int32_t c;

	FUNC1((!kdb_active && !FUNC2())
	    || (sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING) != 0,
	    ("not polling in kdb or panic\n"));

	FUNC0(sc);

	if (sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING)
		FUNC3(sc, wait);

	if (sc->sc_inputs == 0) {
		c = -1;
	} else {
		c = sc->sc_input[sc->sc_inputhead];
		--(sc->sc_inputs);
		++(sc->sc_inputhead);
		if (sc->sc_inputhead >= GPIOKEYS_GLOBAL_IN_BUF_SIZE) {
			sc->sc_inputhead = 0;
		}
	}

	return (c);
}