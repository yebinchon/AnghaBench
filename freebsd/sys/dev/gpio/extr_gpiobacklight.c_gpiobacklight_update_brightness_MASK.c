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
struct gpiobacklight_softc {int /*<<< orphan*/  sc_brightness; scalar_t__ sc_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC1(struct gpiobacklight_softc *sc)
{

	if (sc->sc_pin)
		FUNC0(sc->sc_pin, sc->sc_brightness);
}