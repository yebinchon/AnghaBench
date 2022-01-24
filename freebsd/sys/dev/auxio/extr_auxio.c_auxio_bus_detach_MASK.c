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
struct auxio_softc {int /*<<< orphan*/  sc_led_stat; int /*<<< orphan*/  sc_led_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auxio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct auxio_softc*,int /*<<< orphan*/ ) ; 
 struct auxio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct auxio_softc *sc;

	sc = FUNC2(dev);
	FUNC3(sc->sc_led_dev);
	FUNC1(sc, sc->sc_led_stat);
	FUNC0(sc);

	return (0);
}