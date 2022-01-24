#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpiokeys_softc {int /*<<< orphan*/  sc_flags; } ;
struct TYPE_3__ {struct gpiokeys_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOKEYS_GLOBAL_FLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiokeys_softc*) ; 

__attribute__((used)) static int
FUNC2(keyboard_t *kbd, int on)
{
	struct gpiokeys_softc *sc = kbd->kb_data;

	FUNC0(sc);
	if (on)
		sc->sc_flags |= GPIOKEYS_GLOBAL_FLAG_POLLING;
	else
		sc->sc_flags &= ~GPIOKEYS_GLOBAL_FLAG_POLLING;
	FUNC1(sc);

	return (0);
}