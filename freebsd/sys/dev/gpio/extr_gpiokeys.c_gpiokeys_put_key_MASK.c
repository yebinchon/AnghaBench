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
struct gpiokeys_softc {size_t sc_inputs; size_t sc_inputtail; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 size_t GPIOKEYS_GLOBAL_IN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct gpiokeys_softc *sc, uint32_t key)
{

	FUNC0(sc);

	if (sc->sc_inputs < GPIOKEYS_GLOBAL_IN_BUF_SIZE) {
		sc->sc_input[sc->sc_inputtail] = key;
		++(sc->sc_inputs);
		++(sc->sc_inputtail);
		if (sc->sc_inputtail >= GPIOKEYS_GLOBAL_IN_BUF_SIZE) {
			sc->sc_inputtail = 0;
		}
	} else {
		FUNC1(sc->sc_dev, "input buffer is full\n");
	}
}