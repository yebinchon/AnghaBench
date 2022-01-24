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
typedef  int /*<<< orphan*/  u_int32_t ;
struct auxio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUXIO_LED_LED ; 
 int /*<<< orphan*/  FUNC0 (struct auxio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct auxio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct auxio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct auxio_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, int onoff)
{
	struct auxio_softc *sc;
	u_int32_t led;

	sc = (struct auxio_softc *)arg;

	FUNC0(sc);
	/*
	 * NB: We must not touch the other bits of the SBus AUXIO reg.
	 */
	led = FUNC2(sc);
	if (onoff)
		led |= AUXIO_LED_LED;
	else
		led &= ~AUXIO_LED_LED;
	FUNC3(sc, led);
	FUNC1(sc);
}